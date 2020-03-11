; ModuleID = './../tests/test_cases/adpcm.ll'
source_filename = "adpcm.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@h = local_unnamed_addr constant [24 x i32] [i32 12, i32 -44, i32 -44, i32 212, i32 48, i32 -624, i32 128, i32 1448, i32 -840, i32 -3220, i32 3804, i32 15504, i32 15504, i32 3804, i32 -3220, i32 -840, i32 1448, i32 128, i32 -624, i32 48, i32 212, i32 -44, i32 -44, i32 12], align 16
@tqmf.0 = common local_unnamed_addr global i32 0, align 16
@tqmf.1 = common local_unnamed_addr global i32 0, align 16
@tqmf.2 = common local_unnamed_addr global i32 0, align 16
@tqmf.3 = common local_unnamed_addr global i32 0, align 16
@tqmf.4 = common local_unnamed_addr global i32 0, align 16
@tqmf.5 = common local_unnamed_addr global i32 0, align 16
@tqmf.6 = common local_unnamed_addr global i32 0, align 16
@tqmf.7 = common local_unnamed_addr global i32 0, align 16
@tqmf.8 = common local_unnamed_addr global i32 0, align 16
@tqmf.9 = common local_unnamed_addr global i32 0, align 16
@tqmf.10 = common local_unnamed_addr global i32 0, align 16
@tqmf.11 = common local_unnamed_addr global i32 0, align 16
@tqmf.12 = common local_unnamed_addr global i32 0, align 16
@tqmf.13 = common local_unnamed_addr global i32 0, align 16
@tqmf.14 = common local_unnamed_addr global i32 0, align 16
@tqmf.15 = common local_unnamed_addr global i32 0, align 16
@tqmf.16 = common local_unnamed_addr global i32 0, align 16
@tqmf.17 = common local_unnamed_addr global i32 0, align 16
@tqmf.18 = common local_unnamed_addr global i32 0, align 16
@tqmf.19 = common local_unnamed_addr global i32 0, align 16
@tqmf.20 = common local_unnamed_addr global i32 0, align 16
@tqmf.21 = common local_unnamed_addr global i32 0, align 16
@tqmf.22 = common local_unnamed_addr global i32 0, align 16
@tqmf.23 = common local_unnamed_addr global i32 0, align 16
@tqmf = common local_unnamed_addr global [24 x i32] zeroinitializer, align 16
@xl = common local_unnamed_addr global i32 0, align 4
@xh = common local_unnamed_addr global i32 0, align 4
@delay_bpl.0 = common global i32 0, align 16
@delay_bpl.1 = common global i32 0, align 16
@delay_bpl.2 = common global i32 0, align 16
@delay_bpl.3 = common global i32 0, align 16
@delay_bpl.4 = common global i32 0, align 16
@delay_bpl.5 = common global i32 0, align 16
@delay_bpl = common local_unnamed_addr global [6 x i32] zeroinitializer, align 16
@delay_dltx.0 = common global i32 0, align 16
@delay_dltx.1 = common global i32 0, align 16
@delay_dltx.2 = common global i32 0, align 16
@delay_dltx.3 = common global i32 0, align 16
@delay_dltx.4 = common global i32 0, align 16
@delay_dltx.5 = common global i32 0, align 16
@delay_dltx = common local_unnamed_addr global [6 x i32] zeroinitializer, align 16
@szl = common local_unnamed_addr global i32 0, align 4
@rlt1 = common local_unnamed_addr global i32 0, align 4
@al1 = common local_unnamed_addr global i32 0, align 4
@rlt2 = common local_unnamed_addr global i32 0, align 4
@al2 = common local_unnamed_addr global i32 0, align 4
@spl = common local_unnamed_addr global i32 0, align 4
@sl = common local_unnamed_addr global i32 0, align 4
@el = common local_unnamed_addr global i32 0, align 4
@detl = common local_unnamed_addr global i32 0, align 4
@il = common local_unnamed_addr global i32 0, align 4
@dlt = common local_unnamed_addr global i32 0, align 4
@nbl = common local_unnamed_addr global i32 0, align 4
@plt = common local_unnamed_addr global i32 0, align 4
@plt1 = common local_unnamed_addr global i32 0, align 4
@plt2 = common local_unnamed_addr global i32 0, align 4
@rlt = common local_unnamed_addr global i32 0, align 4
@delay_bph.0 = common global i32 0, align 16
@delay_bph.1 = common global i32 0, align 16
@delay_bph.2 = common global i32 0, align 16
@delay_bph.3 = common global i32 0, align 16
@delay_bph.4 = common global i32 0, align 16
@delay_bph.5 = common global i32 0, align 16
@delay_bph = common local_unnamed_addr global [6 x i32] zeroinitializer, align 16
@delay_dhx.0 = common global i32 0, align 16
@delay_dhx.1 = common global i32 0, align 16
@delay_dhx.2 = common global i32 0, align 16
@delay_dhx.3 = common global i32 0, align 16
@delay_dhx.4 = common global i32 0, align 16
@delay_dhx.5 = common global i32 0, align 16
@delay_dhx = common local_unnamed_addr global [6 x i32] zeroinitializer, align 16
@szh = common local_unnamed_addr global i32 0, align 4
@rh1 = common local_unnamed_addr global i32 0, align 4
@ah1 = common local_unnamed_addr global i32 0, align 4
@rh2 = common local_unnamed_addr global i32 0, align 4
@ah2 = common local_unnamed_addr global i32 0, align 4
@sph = common local_unnamed_addr global i32 0, align 4
@sh = common local_unnamed_addr global i32 0, align 4
@eh = common local_unnamed_addr global i32 0, align 4
@ih = common local_unnamed_addr global i32 0, align 4
@deth = common local_unnamed_addr global i32 0, align 4
@dh = common local_unnamed_addr global i32 0, align 4
@nbh = common local_unnamed_addr global i32 0, align 4
@ph = common local_unnamed_addr global i32 0, align 4
@ph1 = common local_unnamed_addr global i32 0, align 4
@ph2 = common local_unnamed_addr global i32 0, align 4
@yh = common local_unnamed_addr global i32 0, align 4
@ilr = common local_unnamed_addr global i32 0, align 4
@dec_del_bpl.0 = common global i32 0, align 16
@dec_del_bpl.1 = common global i32 0, align 16
@dec_del_bpl.2 = common global i32 0, align 16
@dec_del_bpl.3 = common global i32 0, align 16
@dec_del_bpl.4 = common global i32 0, align 16
@dec_del_bpl.5 = common global i32 0, align 16
@dec_del_bpl = common local_unnamed_addr global [6 x i32] zeroinitializer, align 16
@dec_del_dltx.0 = common global i32 0, align 16
@dec_del_dltx.1 = common global i32 0, align 16
@dec_del_dltx.2 = common global i32 0, align 16
@dec_del_dltx.3 = common global i32 0, align 16
@dec_del_dltx.4 = common global i32 0, align 16
@dec_del_dltx.5 = common global i32 0, align 16
@dec_del_dltx = common local_unnamed_addr global [6 x i32] zeroinitializer, align 16
@dec_szl = common local_unnamed_addr global i32 0, align 4
@dec_rlt1 = common local_unnamed_addr global i32 0, align 4
@dec_al1 = common local_unnamed_addr global i32 0, align 4
@dec_rlt2 = common local_unnamed_addr global i32 0, align 4
@dec_al2 = common local_unnamed_addr global i32 0, align 4
@dec_spl = common local_unnamed_addr global i32 0, align 4
@dec_sl = common local_unnamed_addr global i32 0, align 4
@dec_detl = common local_unnamed_addr global i32 0, align 4
@dec_dlt = common local_unnamed_addr global i32 0, align 4
@dl = common local_unnamed_addr global i32 0, align 4
@rl = common local_unnamed_addr global i32 0, align 4
@dec_nbl = common local_unnamed_addr global i32 0, align 4
@dec_plt = common local_unnamed_addr global i32 0, align 4
@dec_plt1 = common local_unnamed_addr global i32 0, align 4
@dec_plt2 = common local_unnamed_addr global i32 0, align 4
@dec_rlt = common local_unnamed_addr global i32 0, align 4
@dec_del_bph.0 = common global i32 0, align 16
@dec_del_bph.1 = common global i32 0, align 16
@dec_del_bph.2 = common global i32 0, align 16
@dec_del_bph.3 = common global i32 0, align 16
@dec_del_bph.4 = common global i32 0, align 16
@dec_del_bph.5 = common global i32 0, align 16
@dec_del_bph = common local_unnamed_addr global [6 x i32] zeroinitializer, align 16
@dec_del_dhx.0 = common global i32 0, align 16
@dec_del_dhx.1 = common global i32 0, align 16
@dec_del_dhx.2 = common global i32 0, align 16
@dec_del_dhx.3 = common global i32 0, align 16
@dec_del_dhx.4 = common global i32 0, align 16
@dec_del_dhx.5 = common global i32 0, align 16
@dec_del_dhx = common local_unnamed_addr global [6 x i32] zeroinitializer, align 16
@dec_szh = common local_unnamed_addr global i32 0, align 4
@dec_rh1 = common local_unnamed_addr global i32 0, align 4
@dec_ah1 = common local_unnamed_addr global i32 0, align 4
@dec_rh2 = common local_unnamed_addr global i32 0, align 4
@dec_ah2 = common local_unnamed_addr global i32 0, align 4
@dec_sph = common local_unnamed_addr global i32 0, align 4
@dec_sh = common local_unnamed_addr global i32 0, align 4
@dec_deth = common local_unnamed_addr global i32 0, align 4
@dec_dh = common local_unnamed_addr global i32 0, align 4
@dec_nbh = common local_unnamed_addr global i32 0, align 4
@dec_ph = common local_unnamed_addr global i32 0, align 4
@dec_ph1 = common local_unnamed_addr global i32 0, align 4
@dec_ph2 = common local_unnamed_addr global i32 0, align 4
@rh = common local_unnamed_addr global i32 0, align 4
@xd = common local_unnamed_addr global i32 0, align 4
@xs = common local_unnamed_addr global i32 0, align 4
@accumc.0 = common local_unnamed_addr global i32 0, align 16
@accumc.1 = common local_unnamed_addr global i32 0, align 16
@accumc.2 = common local_unnamed_addr global i32 0, align 16
@accumc.3 = common local_unnamed_addr global i32 0, align 16
@accumc.4 = common local_unnamed_addr global i32 0, align 16
@accumc.5 = common local_unnamed_addr global i32 0, align 16
@accumc.6 = common local_unnamed_addr global i32 0, align 16
@accumc.7 = common local_unnamed_addr global i32 0, align 16
@accumc.8 = common local_unnamed_addr global i32 0, align 16
@accumc.9 = common local_unnamed_addr global i32 0, align 16
@accumc.10 = common local_unnamed_addr global i32 0, align 16
@accumc = common local_unnamed_addr global [11 x i32] zeroinitializer, align 16
@accumd.0 = common local_unnamed_addr global i32 0, align 16
@accumd.1 = common local_unnamed_addr global i32 0, align 16
@accumd.2 = common local_unnamed_addr global i32 0, align 16
@accumd.3 = common local_unnamed_addr global i32 0, align 16
@accumd.4 = common local_unnamed_addr global i32 0, align 16
@accumd.5 = common local_unnamed_addr global i32 0, align 16
@accumd.6 = common local_unnamed_addr global i32 0, align 16
@accumd.7 = common local_unnamed_addr global i32 0, align 16
@accumd.8 = common local_unnamed_addr global i32 0, align 16
@accumd.9 = common local_unnamed_addr global i32 0, align 16
@accumd.10 = common local_unnamed_addr global i32 0, align 16
@accumd = common local_unnamed_addr global [11 x i32] zeroinitializer, align 16
@xout1 = common local_unnamed_addr global i32 0, align 4
@xout2 = common local_unnamed_addr global i32 0, align 4
@compressed.0 = common local_unnamed_addr global i32 0, align 16
@compressed.1 = common local_unnamed_addr global i32 0, align 16
@compressed.2 = common local_unnamed_addr global i32 0, align 16
@compressed.3 = common local_unnamed_addr global i32 0, align 16
@compressed.4 = common local_unnamed_addr global i32 0, align 16
@compressed.5 = common local_unnamed_addr global i32 0, align 16
@compressed.6 = common local_unnamed_addr global i32 0, align 16
@compressed.7 = common local_unnamed_addr global i32 0, align 16
@compressed.8 = common local_unnamed_addr global i32 0, align 16
@compressed.9 = common local_unnamed_addr global i32 0, align 16
@compressed.10 = common local_unnamed_addr global i32 0, align 16
@compressed.11 = common local_unnamed_addr global i32 0, align 16
@compressed.12 = common local_unnamed_addr global i32 0, align 16
@compressed.13 = common local_unnamed_addr global i32 0, align 16
@compressed.14 = common local_unnamed_addr global i32 0, align 16
@compressed.15 = common local_unnamed_addr global i32 0, align 16
@compressed.16 = common local_unnamed_addr global i32 0, align 16
@compressed.17 = common local_unnamed_addr global i32 0, align 16
@compressed.18 = common local_unnamed_addr global i32 0, align 16
@compressed.19 = common local_unnamed_addr global i32 0, align 16
@compressed.20 = common local_unnamed_addr global i32 0, align 16
@compressed.21 = common local_unnamed_addr global i32 0, align 16
@compressed.22 = common local_unnamed_addr global i32 0, align 16
@compressed.23 = common local_unnamed_addr global i32 0, align 16
@compressed.24 = common local_unnamed_addr global i32 0, align 16
@compressed.25 = common local_unnamed_addr global i32 0, align 16
@compressed.26 = common local_unnamed_addr global i32 0, align 16
@compressed.27 = common local_unnamed_addr global i32 0, align 16
@compressed.28 = common local_unnamed_addr global i32 0, align 16
@compressed.29 = common local_unnamed_addr global i32 0, align 16
@compressed.30 = common local_unnamed_addr global i32 0, align 16
@compressed.31 = common local_unnamed_addr global i32 0, align 16
@compressed.32 = common local_unnamed_addr global i32 0, align 16
@compressed.33 = common local_unnamed_addr global i32 0, align 16
@compressed.34 = common local_unnamed_addr global i32 0, align 16
@compressed.35 = common local_unnamed_addr global i32 0, align 16
@compressed.36 = common local_unnamed_addr global i32 0, align 16
@compressed.37 = common local_unnamed_addr global i32 0, align 16
@compressed.38 = common local_unnamed_addr global i32 0, align 16
@compressed.39 = common local_unnamed_addr global i32 0, align 16
@compressed.40 = common local_unnamed_addr global i32 0, align 16
@compressed.41 = common local_unnamed_addr global i32 0, align 16
@compressed.42 = common local_unnamed_addr global i32 0, align 16
@compressed.43 = common local_unnamed_addr global i32 0, align 16
@compressed.44 = common local_unnamed_addr global i32 0, align 16
@compressed.45 = common local_unnamed_addr global i32 0, align 16
@compressed.46 = common local_unnamed_addr global i32 0, align 16
@compressed.47 = common local_unnamed_addr global i32 0, align 16
@compressed.48 = common local_unnamed_addr global i32 0, align 16
@compressed.49 = common local_unnamed_addr global i32 0, align 16
@compressed.50 = common local_unnamed_addr global i32 0, align 16
@compressed.51 = common local_unnamed_addr global i32 0, align 16
@compressed.52 = common local_unnamed_addr global i32 0, align 16
@compressed.53 = common local_unnamed_addr global i32 0, align 16
@compressed.54 = common local_unnamed_addr global i32 0, align 16
@compressed.55 = common local_unnamed_addr global i32 0, align 16
@compressed.56 = common local_unnamed_addr global i32 0, align 16
@compressed.57 = common local_unnamed_addr global i32 0, align 16
@compressed.58 = common local_unnamed_addr global i32 0, align 16
@compressed.59 = common local_unnamed_addr global i32 0, align 16
@compressed.60 = common local_unnamed_addr global i32 0, align 16
@compressed.61 = common local_unnamed_addr global i32 0, align 16
@compressed.62 = common local_unnamed_addr global i32 0, align 16
@compressed.63 = common local_unnamed_addr global i32 0, align 16
@compressed.64 = common local_unnamed_addr global i32 0, align 16
@compressed.65 = common local_unnamed_addr global i32 0, align 16
@compressed.66 = common local_unnamed_addr global i32 0, align 16
@compressed.67 = common local_unnamed_addr global i32 0, align 16
@compressed.68 = common local_unnamed_addr global i32 0, align 16
@compressed.69 = common local_unnamed_addr global i32 0, align 16
@compressed.70 = common local_unnamed_addr global i32 0, align 16
@compressed.71 = common local_unnamed_addr global i32 0, align 16
@compressed.72 = common local_unnamed_addr global i32 0, align 16
@compressed.73 = common local_unnamed_addr global i32 0, align 16
@compressed.74 = common local_unnamed_addr global i32 0, align 16
@compressed.75 = common local_unnamed_addr global i32 0, align 16
@compressed.76 = common local_unnamed_addr global i32 0, align 16
@compressed.77 = common local_unnamed_addr global i32 0, align 16
@compressed.78 = common local_unnamed_addr global i32 0, align 16
@compressed.79 = common local_unnamed_addr global i32 0, align 16
@compressed.80 = common local_unnamed_addr global i32 0, align 16
@compressed.81 = common local_unnamed_addr global i32 0, align 16
@compressed.82 = common local_unnamed_addr global i32 0, align 16
@compressed.83 = common local_unnamed_addr global i32 0, align 16
@compressed.84 = common local_unnamed_addr global i32 0, align 16
@compressed.85 = common local_unnamed_addr global i32 0, align 16
@compressed.86 = common local_unnamed_addr global i32 0, align 16
@compressed.87 = common local_unnamed_addr global i32 0, align 16
@compressed.88 = common local_unnamed_addr global i32 0, align 16
@compressed.89 = common local_unnamed_addr global i32 0, align 16
@compressed.90 = common local_unnamed_addr global i32 0, align 16
@compressed.91 = common local_unnamed_addr global i32 0, align 16
@compressed.92 = common local_unnamed_addr global i32 0, align 16
@compressed.93 = common local_unnamed_addr global i32 0, align 16
@compressed.94 = common local_unnamed_addr global i32 0, align 16
@compressed.95 = common local_unnamed_addr global i32 0, align 16
@compressed.96 = common local_unnamed_addr global i32 0, align 16
@compressed.97 = common local_unnamed_addr global i32 0, align 16
@compressed.98 = common local_unnamed_addr global i32 0, align 16
@compressed.99 = common local_unnamed_addr global i32 0, align 16
@result.0 = common local_unnamed_addr global i32 0, align 16
@result.1 = common local_unnamed_addr global i32 0, align 16
@result.2 = common local_unnamed_addr global i32 0, align 16
@result.3 = common local_unnamed_addr global i32 0, align 16
@result.4 = common local_unnamed_addr global i32 0, align 16
@result.5 = common local_unnamed_addr global i32 0, align 16
@result.6 = common local_unnamed_addr global i32 0, align 16
@result.7 = common local_unnamed_addr global i32 0, align 16
@result.8 = common local_unnamed_addr global i32 0, align 16
@result.9 = common local_unnamed_addr global i32 0, align 16
@result.10 = common local_unnamed_addr global i32 0, align 16
@result.11 = common local_unnamed_addr global i32 0, align 16
@result.12 = common local_unnamed_addr global i32 0, align 16
@result.13 = common local_unnamed_addr global i32 0, align 16
@result.14 = common local_unnamed_addr global i32 0, align 16
@result.15 = common local_unnamed_addr global i32 0, align 16
@result.16 = common local_unnamed_addr global i32 0, align 16
@result.17 = common local_unnamed_addr global i32 0, align 16
@result.18 = common local_unnamed_addr global i32 0, align 16
@result.19 = common local_unnamed_addr global i32 0, align 16
@result.20 = common local_unnamed_addr global i32 0, align 16
@result.21 = common local_unnamed_addr global i32 0, align 16
@result.22 = common local_unnamed_addr global i32 0, align 16
@result.23 = common local_unnamed_addr global i32 0, align 16
@result.24 = common local_unnamed_addr global i32 0, align 16
@result.25 = common local_unnamed_addr global i32 0, align 16
@result.26 = common local_unnamed_addr global i32 0, align 16
@result.27 = common local_unnamed_addr global i32 0, align 16
@result.28 = common local_unnamed_addr global i32 0, align 16
@result.29 = common local_unnamed_addr global i32 0, align 16
@result.30 = common local_unnamed_addr global i32 0, align 16
@result.31 = common local_unnamed_addr global i32 0, align 16
@result.32 = common local_unnamed_addr global i32 0, align 16
@result.33 = common local_unnamed_addr global i32 0, align 16
@result.34 = common local_unnamed_addr global i32 0, align 16
@result.35 = common local_unnamed_addr global i32 0, align 16
@result.36 = common local_unnamed_addr global i32 0, align 16
@result.37 = common local_unnamed_addr global i32 0, align 16
@result.38 = common local_unnamed_addr global i32 0, align 16
@result.39 = common local_unnamed_addr global i32 0, align 16
@result.40 = common local_unnamed_addr global i32 0, align 16
@result.41 = common local_unnamed_addr global i32 0, align 16
@result.42 = common local_unnamed_addr global i32 0, align 16
@result.43 = common local_unnamed_addr global i32 0, align 16
@result.44 = common local_unnamed_addr global i32 0, align 16
@result.45 = common local_unnamed_addr global i32 0, align 16
@result.46 = common local_unnamed_addr global i32 0, align 16
@result.47 = common local_unnamed_addr global i32 0, align 16
@result.48 = common local_unnamed_addr global i32 0, align 16
@result.49 = common local_unnamed_addr global i32 0, align 16
@result.50 = common local_unnamed_addr global i32 0, align 16
@result.51 = common local_unnamed_addr global i32 0, align 16
@result.52 = common local_unnamed_addr global i32 0, align 16
@result.53 = common local_unnamed_addr global i32 0, align 16
@result.54 = common local_unnamed_addr global i32 0, align 16
@result.55 = common local_unnamed_addr global i32 0, align 16
@result.56 = common local_unnamed_addr global i32 0, align 16
@result.57 = common local_unnamed_addr global i32 0, align 16
@result.58 = common local_unnamed_addr global i32 0, align 16
@result.59 = common local_unnamed_addr global i32 0, align 16
@result.60 = common local_unnamed_addr global i32 0, align 16
@result.61 = common local_unnamed_addr global i32 0, align 16
@result.62 = common local_unnamed_addr global i32 0, align 16
@result.63 = common local_unnamed_addr global i32 0, align 16
@result.64 = common local_unnamed_addr global i32 0, align 16
@result.65 = common local_unnamed_addr global i32 0, align 16
@result.66 = common local_unnamed_addr global i32 0, align 16
@result.67 = common local_unnamed_addr global i32 0, align 16
@result.68 = common local_unnamed_addr global i32 0, align 16
@result.69 = common local_unnamed_addr global i32 0, align 16
@result.70 = common local_unnamed_addr global i32 0, align 16
@result.71 = common local_unnamed_addr global i32 0, align 16
@result.72 = common local_unnamed_addr global i32 0, align 16
@result.73 = common local_unnamed_addr global i32 0, align 16
@result.74 = common local_unnamed_addr global i32 0, align 16
@result.75 = common local_unnamed_addr global i32 0, align 16
@result.76 = common local_unnamed_addr global i32 0, align 16
@result.77 = common local_unnamed_addr global i32 0, align 16
@result.78 = common local_unnamed_addr global i32 0, align 16
@result.79 = common local_unnamed_addr global i32 0, align 16
@result.80 = common local_unnamed_addr global i32 0, align 16
@result.81 = common local_unnamed_addr global i32 0, align 16
@result.82 = common local_unnamed_addr global i32 0, align 16
@result.83 = common local_unnamed_addr global i32 0, align 16
@result.84 = common local_unnamed_addr global i32 0, align 16
@result.85 = common local_unnamed_addr global i32 0, align 16
@result.86 = common local_unnamed_addr global i32 0, align 16
@result.87 = common local_unnamed_addr global i32 0, align 16
@result.88 = common local_unnamed_addr global i32 0, align 16
@result.89 = common local_unnamed_addr global i32 0, align 16
@result.90 = common local_unnamed_addr global i32 0, align 16
@result.91 = common local_unnamed_addr global i32 0, align 16
@result.92 = common local_unnamed_addr global i32 0, align 16
@result.93 = common local_unnamed_addr global i32 0, align 16
@result.94 = common local_unnamed_addr global i32 0, align 16
@result.95 = common local_unnamed_addr global i32 0, align 16
@result.96 = common local_unnamed_addr global i32 0, align 16
@result.97 = common local_unnamed_addr global i32 0, align 16
@result.98 = common local_unnamed_addr global i32 0, align 16
@result.99 = common local_unnamed_addr global i32 0, align 16
@.str = private unnamed_addr constant [12 x i8] c"Result: %d\0A\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() local_unnamed_addr #0 {
entry:
  tail call void @reset.v0.C.c.c() #5
  br label %for.body.i

for.body.i:                                       ; preds = %entry, %__non_const_wrapper__.64.exit
  %i.0.i3618 = phi i32 [ 0, %entry ], [ %add5.i, %__non_const_wrapper__.64.exit ]
  switch i32 %i.0.i3618, label %csroa.if.end459.i [
    i32 0, label %__non_const_wrapper__.62.exit
    i32 2, label %__non_const_wrapper__.62.exit
    i32 4, label %__non_const_wrapper__.62.exit
    i32 6, label %__non_const_wrapper__.62.exit
    i32 8, label %__non_const_wrapper__.62.exit
    i32 10, label %__non_const_wrapper__.62.exit
    i32 12, label %__non_const_wrapper__.62.exit
    i32 14, label %__non_const_wrapper__.62.exit
    i32 16, label %__non_const_wrapper__.62.exit
    i32 18, label %csroa.if.end89.i
    i32 20, label %csroa.if.end89.i
    i32 22, label %csroa.if.end89.i
    i32 24, label %csroa.if.end119.i
    i32 26, label %csroa.if.end119.i
    i32 28, label %csroa.if.end119.i
    i32 30, label %csroa.if.end149.i
    i32 32, label %csroa.if.end149.i
    i32 34, label %csroa.if.end149.i
    i32 36, label %csroa.if.end179.i
    i32 38, label %csroa.if.end179.i
    i32 40, label %csroa.if.end179.i
    i32 42, label %csroa.if.end179.i
    i32 44, label %csroa.if.end219.i
    i32 46, label %csroa.if.end219.i
    i32 48, label %csroa.if.end239.i
    i32 50, label %csroa.if.end239.i
    i32 52, label %csroa.if.end239.i
    i32 54, label %csroa.if.end269.i
    i32 56, label %csroa.if.end269.i
    i32 58, label %csroa.if.end269.i
    i32 60, label %csroa.if.end299.i
    i32 62, label %csroa.if.end299.i
    i32 64, label %csroa.if.end299.i
    i32 66, label %csroa.if.end299.i
    i32 68, label %csroa.if.end299.i
    i32 70, label %csroa.if.end349.i
    i32 72, label %csroa.if.end349.i
    i32 74, label %csroa.if.end349.i
    i32 76, label %csroa.if.end349.i
    i32 78, label %csroa.if.end349.i
    i32 80, label %csroa.if.end349.i
    i32 82, label %csroa.if.end349.i
    i32 84, label %csroa.if.end349.i
    i32 86, label %csroa.if.end349.i
    i32 88, label %csroa.if.end349.i
    i32 90, label %csroa.if.end349.i
  ]

csroa.if.end459.i:                                ; preds = %for.body.i
  br label %csroa.if.end349.i

csroa.if.end349.i:                                ; preds = %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %csroa.if.end459.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i
  %.phi350.i = phi i32 [ 59, %for.body.i ], [ 59, %for.body.i ], [ 59, %for.body.i ], [ 59, %for.body.i ], [ 59, %for.body.i ], [ 59, %for.body.i ], [ 59, %for.body.i ], [ 59, %for.body.i ], [ 59, %for.body.i ], [ 59, %for.body.i ], [ 60, %csroa.if.end459.i ], [ 59, %for.body.i ]
  br label %csroa.if.end299.i

csroa.if.end299.i:                                ; preds = %for.body.i, %for.body.i, %for.body.i, %csroa.if.end349.i, %for.body.i, %for.body.i
  %.phi300.i = phi i32 [ 60, %for.body.i ], [ 60, %for.body.i ], [ 60, %for.body.i ], [ 60, %for.body.i ], [ %.phi350.i, %csroa.if.end349.i ], [ 60, %for.body.i ]
  br label %csroa.if.end269.i

csroa.if.end269.i:                                ; preds = %for.body.i, %for.body.i, %csroa.if.end299.i, %for.body.i
  %.phi270.i = phi i32 [ 61, %for.body.i ], [ 61, %for.body.i ], [ %.phi300.i, %csroa.if.end299.i ], [ 61, %for.body.i ]
  br label %csroa.if.end239.i

csroa.if.end239.i:                                ; preds = %for.body.i, %for.body.i, %csroa.if.end269.i, %for.body.i
  %.phi240.i = phi i32 [ 62, %for.body.i ], [ 62, %for.body.i ], [ %.phi270.i, %csroa.if.end269.i ], [ 62, %for.body.i ]
  br label %csroa.if.end219.i

csroa.if.end219.i:                                ; preds = %csroa.if.end239.i, %for.body.i, %for.body.i
  %.phi220.i = phi i32 [ 63, %for.body.i ], [ %.phi240.i, %csroa.if.end239.i ], [ 63, %for.body.i ]
  br label %csroa.if.end179.i

csroa.if.end179.i:                                ; preds = %for.body.i, %csroa.if.end219.i, %for.body.i, %for.body.i, %for.body.i
  %.phi180.i = phi i32 [ 64, %for.body.i ], [ 64, %for.body.i ], [ 64, %for.body.i ], [ %.phi220.i, %csroa.if.end219.i ], [ 64, %for.body.i ]
  br label %csroa.if.end149.i

csroa.if.end149.i:                                ; preds = %for.body.i, %for.body.i, %csroa.if.end179.i, %for.body.i
  %.phi150.i = phi i32 [ 65, %for.body.i ], [ 65, %for.body.i ], [ %.phi180.i, %csroa.if.end179.i ], [ 65, %for.body.i ]
  br label %csroa.if.end119.i

csroa.if.end119.i:                                ; preds = %for.body.i, %for.body.i, %csroa.if.end149.i, %for.body.i
  %.phi120.i = phi i32 [ 66, %for.body.i ], [ 66, %for.body.i ], [ %.phi150.i, %csroa.if.end149.i ], [ 66, %for.body.i ]
  br label %csroa.if.end89.i

csroa.if.end89.i:                                 ; preds = %for.body.i, %for.body.i, %csroa.if.end119.i, %for.body.i
  %.phi90.i = phi i32 [ 67, %for.body.i ], [ 67, %for.body.i ], [ %.phi120.i, %csroa.if.end119.i ], [ 67, %for.body.i ]
  br label %__non_const_wrapper__.62.exit

__non_const_wrapper__.62.exit:                    ; preds = %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %csroa.if.end89.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i
  %.phi.i = phi i32 [ 68, %for.body.i ], [ 68, %for.body.i ], [ 68, %for.body.i ], [ 68, %for.body.i ], [ 68, %for.body.i ], [ 68, %for.body.i ], [ 68, %for.body.i ], [ 68, %for.body.i ], [ %.phi90.i, %csroa.if.end89.i ], [ 68, %for.body.i ]
  %add.i = or i32 %i.0.i3618, 1
  switch i32 %add.i, label %csroa.if.else113.i [
    i32 1, label %__non_const_wrapper__.63.exit
    i32 3, label %__non_const_wrapper__.63.exit
    i32 5, label %__non_const_wrapper__.63.exit
    i32 7, label %__non_const_wrapper__.63.exit
    i32 9, label %__non_const_wrapper__.63.exit
    i32 11, label %__non_const_wrapper__.63.exit
    i32 13, label %__non_const_wrapper__.63.exit
    i32 15, label %__non_const_wrapper__.63.exit
    i32 17, label %csroa.if.end84.i
    i32 19, label %csroa.if.end84.i
    i32 21, label %csroa.if.end84.i
    i32 23, label %csroa.if.end84.i
  ]

csroa.if.else113.i:                               ; preds = %__non_const_wrapper__.62.exit
  switch i32 %add.i, label %csroa.if.end464.i [
    i32 25, label %csroa.if.end84.i
    i32 27, label %csroa.if.end84.i
    i32 29, label %csroa.if.end84.i
    i32 31, label %csroa.if.end154.i
    i32 33, label %csroa.if.end154.i
    i32 35, label %csroa.if.end174.i
    i32 37, label %csroa.if.end174.i
    i32 39, label %csroa.if.end174.i
    i32 41, label %csroa.if.end174.i
    i32 43, label %csroa.if.end214.i
    i32 45, label %csroa.if.end214.i
    i32 47, label %csroa.if.end214.i
    i32 49, label %csroa.if.end244.i
    i32 51, label %csroa.if.end244.i
    i32 53, label %csroa.if.end244.i
    i32 55, label %csroa.if.end274.i
    i32 57, label %csroa.if.end274.i
    i32 59, label %csroa.if.end274.i
    i32 61, label %csroa.if.end304.i
    i32 63, label %csroa.if.end304.i
    i32 65, label %csroa.if.end304.i
    i32 67, label %csroa.if.end304.i
    i32 69, label %csroa.if.end344.i
    i32 71, label %csroa.if.end344.i
    i32 73, label %csroa.if.end344.i
    i32 75, label %csroa.if.end344.i
    i32 77, label %csroa.if.end344.i
    i32 79, label %csroa.if.end344.i
    i32 81, label %csroa.if.end344.i
    i32 83, label %csroa.if.end344.i
    i32 85, label %csroa.if.end344.i
    i32 87, label %csroa.if.end344.i
    i32 89, label %csroa.if.end344.i
    i32 91, label %csroa.if.end344.i
  ]

csroa.if.end464.i:                                ; preds = %csroa.if.else113.i
  br label %csroa.if.end344.i

csroa.if.end344.i:                                ; preds = %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.end464.i, %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.else113.i
  %.phi345.i = phi i32 [ 59, %csroa.if.else113.i ], [ 59, %csroa.if.else113.i ], [ 59, %csroa.if.else113.i ], [ 59, %csroa.if.else113.i ], [ 59, %csroa.if.else113.i ], [ 59, %csroa.if.else113.i ], [ 59, %csroa.if.else113.i ], [ 59, %csroa.if.else113.i ], [ 59, %csroa.if.else113.i ], [ 59, %csroa.if.else113.i ], [ 59, %csroa.if.else113.i ], [ 60, %csroa.if.end464.i ], [ 59, %csroa.if.else113.i ]
  br label %csroa.if.end304.i

csroa.if.end304.i:                                ; preds = %csroa.if.else113.i, %csroa.if.end344.i, %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.else113.i
  %.phi305.i = phi i32 [ 60, %csroa.if.else113.i ], [ 60, %csroa.if.else113.i ], [ 60, %csroa.if.else113.i ], [ %.phi345.i, %csroa.if.end344.i ], [ 60, %csroa.if.else113.i ]
  br label %csroa.if.end274.i

csroa.if.end274.i:                                ; preds = %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.end304.i, %csroa.if.else113.i
  %.phi275.i = phi i32 [ 61, %csroa.if.else113.i ], [ 61, %csroa.if.else113.i ], [ %.phi305.i, %csroa.if.end304.i ], [ 61, %csroa.if.else113.i ]
  br label %csroa.if.end244.i

csroa.if.end244.i:                                ; preds = %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.end274.i, %csroa.if.else113.i
  %.phi245.i = phi i32 [ 62, %csroa.if.else113.i ], [ 62, %csroa.if.else113.i ], [ %.phi275.i, %csroa.if.end274.i ], [ 62, %csroa.if.else113.i ]
  br label %csroa.if.end214.i

csroa.if.end214.i:                                ; preds = %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.end244.i, %csroa.if.else113.i
  %.phi215.i = phi i32 [ 63, %csroa.if.else113.i ], [ 63, %csroa.if.else113.i ], [ %.phi245.i, %csroa.if.end244.i ], [ 63, %csroa.if.else113.i ]
  br label %csroa.if.end174.i

csroa.if.end174.i:                                ; preds = %csroa.if.else113.i, %csroa.if.end214.i, %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.else113.i
  %.phi175.i = phi i32 [ 64, %csroa.if.else113.i ], [ 64, %csroa.if.else113.i ], [ 64, %csroa.if.else113.i ], [ %.phi215.i, %csroa.if.end214.i ], [ 64, %csroa.if.else113.i ]
  br label %csroa.if.end154.i

csroa.if.end154.i:                                ; preds = %csroa.if.end174.i, %csroa.if.else113.i, %csroa.if.else113.i
  %.phi155.i = phi i32 [ 65, %csroa.if.else113.i ], [ %.phi175.i, %csroa.if.end174.i ], [ 65, %csroa.if.else113.i ]
  br label %csroa.if.end84.i

csroa.if.end84.i:                                 ; preds = %__non_const_wrapper__.62.exit, %__non_const_wrapper__.62.exit, %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.end154.i, %csroa.if.else113.i, %__non_const_wrapper__.62.exit, %__non_const_wrapper__.62.exit
  %.phi85.i = phi i32 [ 67, %__non_const_wrapper__.62.exit ], [ 67, %__non_const_wrapper__.62.exit ], [ 67, %__non_const_wrapper__.62.exit ], [ 67, %__non_const_wrapper__.62.exit ], [ 66, %csroa.if.else113.i ], [ 66, %csroa.if.else113.i ], [ %.phi155.i, %csroa.if.end154.i ], [ 66, %csroa.if.else113.i ]
  br label %__non_const_wrapper__.63.exit

__non_const_wrapper__.63.exit:                    ; preds = %__non_const_wrapper__.62.exit, %__non_const_wrapper__.62.exit, %__non_const_wrapper__.62.exit, %csroa.if.end84.i, %__non_const_wrapper__.62.exit, %__non_const_wrapper__.62.exit, %__non_const_wrapper__.62.exit, %__non_const_wrapper__.62.exit, %__non_const_wrapper__.62.exit
  %.phi5.i = phi i32 [ 68, %__non_const_wrapper__.62.exit ], [ 68, %__non_const_wrapper__.62.exit ], [ 68, %__non_const_wrapper__.62.exit ], [ 68, %__non_const_wrapper__.62.exit ], [ 68, %__non_const_wrapper__.62.exit ], [ 68, %__non_const_wrapper__.62.exit ], [ 68, %__non_const_wrapper__.62.exit ], [ %.phi85.i, %csroa.if.end84.i ], [ 68, %__non_const_wrapper__.62.exit ]
  %call.c.i.c = tail call i32 @encode.v0.C.c.c(i32 %.phi.i, i32 %.phi5.i) #5
  %div.i = sdiv i32 %i.0.i3618, 2
  switch i32 %div.i, label %csroa.if.else51.i [
    i32 0, label %csroa.if.then.i159
    i32 1, label %__non_const_wrapper__.64.exit.sink.split
    i32 2, label %csroa.if.then6.i
    i32 3, label %csroa.if.then10.i
    i32 4, label %csroa.if.then14.i
    i32 5, label %csroa.if.then18.i
    i32 6, label %csroa.if.then22.i165
    i32 7, label %csroa.if.then26.i
    i32 8, label %csroa.if.then30.i
    i32 9, label %csroa.if.then34.i
    i32 10, label %csroa.if.then38.i
    i32 11, label %csroa.if.then42.i168
    i32 12, label %csroa.if.then46.i
    i32 13, label %csroa.if.then50.i
  ]

csroa.if.then.i159:                               ; preds = %__non_const_wrapper__.63.exit
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then6.i:                                 ; preds = %__non_const_wrapper__.63.exit
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then10.i:                                ; preds = %__non_const_wrapper__.63.exit
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then14.i:                                ; preds = %__non_const_wrapper__.63.exit
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then18.i:                                ; preds = %__non_const_wrapper__.63.exit
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then22.i165:                             ; preds = %__non_const_wrapper__.63.exit
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then26.i:                                ; preds = %__non_const_wrapper__.63.exit
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then30.i:                                ; preds = %__non_const_wrapper__.63.exit
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then34.i:                                ; preds = %__non_const_wrapper__.63.exit
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then38.i:                                ; preds = %__non_const_wrapper__.63.exit
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then42.i168:                             ; preds = %__non_const_wrapper__.63.exit
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then46.i:                                ; preds = %__non_const_wrapper__.63.exit
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then50.i:                                ; preds = %__non_const_wrapper__.63.exit
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.else51.i:                                ; preds = %__non_const_wrapper__.63.exit
  switch i32 %div.i, label %__non_const_wrapper__.64.exit [
    i32 14, label %__non_const_wrapper__.64.exit.sink.split
    i32 15, label %csroa.if.then58.i
    i32 16, label %csroa.if.then62.i171
    i32 17, label %csroa.if.then66.i
    i32 18, label %csroa.if.then70.i
    i32 19, label %csroa.if.then74.i
    i32 20, label %csroa.if.then78.i
    i32 21, label %csroa.if.then82.i174
    i32 22, label %csroa.if.then86.i
    i32 23, label %csroa.if.then90.i
    i32 24, label %csroa.if.then94.i
    i32 25, label %csroa.if.then98.i
    i32 26, label %csroa.if.then102.i177
    i32 27, label %csroa.if.then106.i
    i32 28, label %csroa.if.then110.i
    i32 29, label %csroa.if.then114.i
    i32 30, label %csroa.if.then118.i
    i32 31, label %csroa.if.then122.i180
    i32 32, label %csroa.if.then126.i
    i32 33, label %csroa.if.then130.i
    i32 34, label %csroa.if.then134.i
    i32 35, label %csroa.if.then138.i
    i32 36, label %csroa.if.then142.i183
    i32 37, label %csroa.if.then146.i
    i32 38, label %csroa.if.then150.i
    i32 39, label %csroa.if.then154.i
    i32 40, label %csroa.if.then158.i
    i32 41, label %csroa.if.then162.i186
    i32 42, label %csroa.if.then166.i
    i32 43, label %csroa.if.then170.i
    i32 44, label %csroa.if.then174.i
    i32 45, label %csroa.if.then178.i
    i32 46, label %csroa.if.then182.i189
    i32 47, label %csroa.if.then186.i
    i32 48, label %csroa.if.then190.i
    i32 49, label %csroa.if.then194.i
    i32 50, label %csroa.if.then198.i
    i32 51, label %csroa.if.then202.i192
    i32 52, label %csroa.if.then206.i
    i32 53, label %csroa.if.then210.i
    i32 54, label %csroa.if.then214.i
    i32 55, label %csroa.if.then218.i
    i32 56, label %csroa.if.then222.i195
    i32 57, label %csroa.if.then226.i
    i32 58, label %csroa.if.then230.i
    i32 59, label %csroa.if.then234.i
    i32 60, label %csroa.if.then238.i
    i32 61, label %csroa.if.then242.i198
    i32 62, label %csroa.if.then246.i
    i32 63, label %csroa.if.then250.i
    i32 64, label %csroa.if.then254.i
    i32 65, label %csroa.if.then258.i
    i32 66, label %csroa.if.then262.i201
    i32 67, label %csroa.if.then266.i
    i32 68, label %csroa.if.then270.i
    i32 69, label %csroa.if.then274.i
    i32 70, label %csroa.if.then278.i
    i32 71, label %csroa.if.then282.i204
    i32 72, label %csroa.if.then286.i
    i32 73, label %csroa.if.then290.i
    i32 74, label %csroa.if.then294.i
    i32 75, label %csroa.if.then298.i
    i32 76, label %csroa.if.then302.i207
    i32 77, label %csroa.if.then306.i
    i32 78, label %csroa.if.then310.i
    i32 79, label %csroa.if.then314.i
    i32 80, label %csroa.if.then318.i
    i32 81, label %csroa.if.then322.i210
    i32 82, label %csroa.if.then326.i
    i32 83, label %csroa.if.then330.i
    i32 84, label %csroa.if.then334.i
    i32 85, label %csroa.if.then338.i
    i32 86, label %csroa.if.then342.i213
    i32 87, label %csroa.if.then346.i
    i32 88, label %csroa.if.then350.i
    i32 89, label %csroa.if.then354.i
    i32 90, label %csroa.if.then358.i
    i32 91, label %csroa.if.then362.i216
    i32 92, label %csroa.if.then366.i
    i32 93, label %csroa.if.then370.i
    i32 94, label %csroa.if.then374.i
    i32 95, label %csroa.if.then378.i
    i32 96, label %csroa.if.then382.i219
    i32 97, label %csroa.if.then386.i
    i32 98, label %csroa.if.then390.i
    i32 99, label %csroa.if.then394.i
  ]

csroa.if.then58.i:                                ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then62.i171:                             ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then66.i:                                ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then70.i:                                ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then74.i:                                ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then78.i:                                ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then82.i174:                             ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then86.i:                                ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then90.i:                                ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then94.i:                                ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then98.i:                                ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then102.i177:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then106.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then110.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then114.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then118.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then122.i180:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then126.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then130.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then134.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then138.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then142.i183:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then146.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then150.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then154.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then158.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then162.i186:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then166.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then170.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then174.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then178.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then182.i189:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then186.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then190.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then194.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then198.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then202.i192:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then206.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then210.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then214.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then218.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then222.i195:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then226.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then230.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then234.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then238.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then242.i198:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then246.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then250.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then254.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then258.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then262.i201:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then266.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then270.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then274.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then278.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then282.i204:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then286.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then290.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then294.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then298.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then302.i207:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then306.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then310.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then314.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then318.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then322.i210:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then326.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then330.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then334.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then338.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then342.i213:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then346.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then350.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then354.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then358.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then362.i216:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then366.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then370.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then374.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then378.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then382.i219:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then386.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then390.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

csroa.if.then394.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.64.exit.sink.split

__non_const_wrapper__.64.exit.sink.split:         ; preds = %csroa.if.else51.i, %__non_const_wrapper__.63.exit, %csroa.if.then.i159, %csroa.if.then6.i, %csroa.if.then14.i, %csroa.if.then22.i165, %csroa.if.then30.i, %csroa.if.then38.i, %csroa.if.then46.i, %csroa.if.then62.i171, %csroa.if.then70.i, %csroa.if.then78.i, %csroa.if.then86.i, %csroa.if.then94.i, %csroa.if.then102.i177, %csroa.if.then110.i, %csroa.if.then118.i, %csroa.if.then126.i, %csroa.if.then134.i, %csroa.if.then142.i183, %csroa.if.then150.i, %csroa.if.then158.i, %csroa.if.then166.i, %csroa.if.then174.i, %csroa.if.then182.i189, %csroa.if.then190.i, %csroa.if.then198.i, %csroa.if.then206.i, %csroa.if.then214.i, %csroa.if.then222.i195, %csroa.if.then230.i, %csroa.if.then238.i, %csroa.if.then246.i, %csroa.if.then254.i, %csroa.if.then262.i201, %csroa.if.then270.i, %csroa.if.then278.i, %csroa.if.then286.i, %csroa.if.then294.i, %csroa.if.then302.i207, %csroa.if.then310.i, %csroa.if.then318.i, %csroa.if.then326.i, %csroa.if.then334.i, %csroa.if.then342.i213, %csroa.if.then350.i, %csroa.if.then358.i, %csroa.if.then366.i, %csroa.if.then374.i, %csroa.if.then382.i219, %csroa.if.then390.i, %csroa.if.then394.i, %csroa.if.then386.i, %csroa.if.then378.i, %csroa.if.then370.i, %csroa.if.then362.i216, %csroa.if.then354.i, %csroa.if.then346.i, %csroa.if.then338.i, %csroa.if.then330.i, %csroa.if.then322.i210, %csroa.if.then314.i, %csroa.if.then306.i, %csroa.if.then298.i, %csroa.if.then290.i, %csroa.if.then282.i204, %csroa.if.then274.i, %csroa.if.then266.i, %csroa.if.then258.i, %csroa.if.then250.i, %csroa.if.then242.i198, %csroa.if.then234.i, %csroa.if.then226.i, %csroa.if.then218.i, %csroa.if.then210.i, %csroa.if.then202.i192, %csroa.if.then194.i, %csroa.if.then186.i, %csroa.if.then178.i, %csroa.if.then170.i, %csroa.if.then162.i186, %csroa.if.then154.i, %csroa.if.then146.i, %csroa.if.then138.i, %csroa.if.then130.i, %csroa.if.then122.i180, %csroa.if.then114.i, %csroa.if.then106.i, %csroa.if.then98.i, %csroa.if.then90.i, %csroa.if.then82.i174, %csroa.if.then74.i, %csroa.if.then66.i, %csroa.if.then58.i, %csroa.if.then50.i, %csroa.if.then42.i168, %csroa.if.then34.i, %csroa.if.then26.i, %csroa.if.then18.i, %csroa.if.then10.i
  %compressed.1.sink = phi i32* [ @compressed.3, %csroa.if.then10.i ], [ @compressed.5, %csroa.if.then18.i ], [ @compressed.7, %csroa.if.then26.i ], [ @compressed.9, %csroa.if.then34.i ], [ @compressed.11, %csroa.if.then42.i168 ], [ @compressed.13, %csroa.if.then50.i ], [ @compressed.15, %csroa.if.then58.i ], [ @compressed.17, %csroa.if.then66.i ], [ @compressed.19, %csroa.if.then74.i ], [ @compressed.21, %csroa.if.then82.i174 ], [ @compressed.23, %csroa.if.then90.i ], [ @compressed.25, %csroa.if.then98.i ], [ @compressed.27, %csroa.if.then106.i ], [ @compressed.29, %csroa.if.then114.i ], [ @compressed.31, %csroa.if.then122.i180 ], [ @compressed.33, %csroa.if.then130.i ], [ @compressed.35, %csroa.if.then138.i ], [ @compressed.37, %csroa.if.then146.i ], [ @compressed.39, %csroa.if.then154.i ], [ @compressed.41, %csroa.if.then162.i186 ], [ @compressed.43, %csroa.if.then170.i ], [ @compressed.45, %csroa.if.then178.i ], [ @compressed.47, %csroa.if.then186.i ], [ @compressed.49, %csroa.if.then194.i ], [ @compressed.51, %csroa.if.then202.i192 ], [ @compressed.53, %csroa.if.then210.i ], [ @compressed.55, %csroa.if.then218.i ], [ @compressed.57, %csroa.if.then226.i ], [ @compressed.59, %csroa.if.then234.i ], [ @compressed.61, %csroa.if.then242.i198 ], [ @compressed.63, %csroa.if.then250.i ], [ @compressed.65, %csroa.if.then258.i ], [ @compressed.67, %csroa.if.then266.i ], [ @compressed.69, %csroa.if.then274.i ], [ @compressed.71, %csroa.if.then282.i204 ], [ @compressed.73, %csroa.if.then290.i ], [ @compressed.75, %csroa.if.then298.i ], [ @compressed.77, %csroa.if.then306.i ], [ @compressed.79, %csroa.if.then314.i ], [ @compressed.81, %csroa.if.then322.i210 ], [ @compressed.83, %csroa.if.then330.i ], [ @compressed.85, %csroa.if.then338.i ], [ @compressed.87, %csroa.if.then346.i ], [ @compressed.89, %csroa.if.then354.i ], [ @compressed.91, %csroa.if.then362.i216 ], [ @compressed.93, %csroa.if.then370.i ], [ @compressed.95, %csroa.if.then378.i ], [ @compressed.97, %csroa.if.then386.i ], [ @compressed.99, %csroa.if.then394.i ], [ @compressed.98, %csroa.if.then390.i ], [ @compressed.96, %csroa.if.then382.i219 ], [ @compressed.94, %csroa.if.then374.i ], [ @compressed.92, %csroa.if.then366.i ], [ @compressed.90, %csroa.if.then358.i ], [ @compressed.88, %csroa.if.then350.i ], [ @compressed.86, %csroa.if.then342.i213 ], [ @compressed.84, %csroa.if.then334.i ], [ @compressed.82, %csroa.if.then326.i ], [ @compressed.80, %csroa.if.then318.i ], [ @compressed.78, %csroa.if.then310.i ], [ @compressed.76, %csroa.if.then302.i207 ], [ @compressed.74, %csroa.if.then294.i ], [ @compressed.72, %csroa.if.then286.i ], [ @compressed.70, %csroa.if.then278.i ], [ @compressed.68, %csroa.if.then270.i ], [ @compressed.66, %csroa.if.then262.i201 ], [ @compressed.64, %csroa.if.then254.i ], [ @compressed.62, %csroa.if.then246.i ], [ @compressed.60, %csroa.if.then238.i ], [ @compressed.58, %csroa.if.then230.i ], [ @compressed.56, %csroa.if.then222.i195 ], [ @compressed.54, %csroa.if.then214.i ], [ @compressed.52, %csroa.if.then206.i ], [ @compressed.50, %csroa.if.then198.i ], [ @compressed.48, %csroa.if.then190.i ], [ @compressed.46, %csroa.if.then182.i189 ], [ @compressed.44, %csroa.if.then174.i ], [ @compressed.42, %csroa.if.then166.i ], [ @compressed.40, %csroa.if.then158.i ], [ @compressed.38, %csroa.if.then150.i ], [ @compressed.36, %csroa.if.then142.i183 ], [ @compressed.34, %csroa.if.then134.i ], [ @compressed.32, %csroa.if.then126.i ], [ @compressed.30, %csroa.if.then118.i ], [ @compressed.28, %csroa.if.then110.i ], [ @compressed.26, %csroa.if.then102.i177 ], [ @compressed.24, %csroa.if.then94.i ], [ @compressed.22, %csroa.if.then86.i ], [ @compressed.20, %csroa.if.then78.i ], [ @compressed.18, %csroa.if.then70.i ], [ @compressed.16, %csroa.if.then62.i171 ], [ @compressed.12, %csroa.if.then46.i ], [ @compressed.10, %csroa.if.then38.i ], [ @compressed.8, %csroa.if.then30.i ], [ @compressed.6, %csroa.if.then22.i165 ], [ @compressed.4, %csroa.if.then14.i ], [ @compressed.2, %csroa.if.then6.i ], [ @compressed.0, %csroa.if.then.i159 ], [ @compressed.1, %__non_const_wrapper__.63.exit ], [ @compressed.14, %csroa.if.else51.i ]
  store i32 %call.c.i.c, i32* %compressed.1.sink, align 16
  br label %__non_const_wrapper__.64.exit

__non_const_wrapper__.64.exit:                    ; preds = %__non_const_wrapper__.64.exit.sink.split, %csroa.if.else51.i
  %add5.i = add nuw nsw i32 %i.0.i3618, 2
  %cmp.i = icmp slt i32 %add5.i, 100
  br i1 %cmp.i, label %for.body.i, label %for.body8.i.preheader

for.body8.i.preheader:                            ; preds = %__non_const_wrapper__.64.exit
  br label %for.body8.i

for.cond.preheader:                               ; preds = %__non_const_wrapper__.67.exit
  %0 = load i32, i32* @compressed.0, align 16
  %1 = load i32, i32* @compressed.1, align 16
  %2 = load i32, i32* @compressed.2, align 16
  %3 = load i32, i32* @compressed.3, align 16
  %4 = load i32, i32* @compressed.4, align 16
  %5 = load i32, i32* @compressed.5, align 16
  %6 = load i32, i32* @compressed.6, align 16
  %7 = load i32, i32* @compressed.7, align 16
  %8 = load i32, i32* @compressed.8, align 16
  %9 = load i32, i32* @compressed.9, align 16
  %10 = load i32, i32* @compressed.10, align 16
  %11 = load i32, i32* @compressed.11, align 16
  %12 = load i32, i32* @compressed.12, align 16
  %13 = load i32, i32* @compressed.13, align 16
  %14 = load i32, i32* @compressed.14, align 16
  %15 = load i32, i32* @compressed.15, align 16
  %16 = load i32, i32* @compressed.16, align 16
  %17 = load i32, i32* @compressed.17, align 16
  %18 = load i32, i32* @compressed.18, align 16
  %19 = load i32, i32* @compressed.19, align 16
  %20 = load i32, i32* @compressed.20, align 16
  %21 = load i32, i32* @compressed.21, align 16
  %22 = load i32, i32* @compressed.22, align 16
  %23 = load i32, i32* @compressed.23, align 16
  %24 = load i32, i32* @compressed.24, align 16
  %25 = load i32, i32* @compressed.25, align 16
  %26 = load i32, i32* @compressed.26, align 16
  %27 = load i32, i32* @compressed.27, align 16
  %28 = load i32, i32* @compressed.28, align 16
  %29 = load i32, i32* @compressed.29, align 16
  %30 = load i32, i32* @compressed.30, align 16
  %31 = load i32, i32* @compressed.31, align 16
  %32 = load i32, i32* @compressed.32, align 16
  %33 = load i32, i32* @compressed.33, align 16
  %34 = load i32, i32* @compressed.34, align 16
  %35 = load i32, i32* @compressed.35, align 16
  %36 = load i32, i32* @compressed.36, align 16
  %37 = load i32, i32* @compressed.37, align 16
  %38 = load i32, i32* @compressed.38, align 16
  %39 = load i32, i32* @compressed.39, align 16
  %40 = load i32, i32* @compressed.40, align 16
  %41 = load i32, i32* @compressed.41, align 16
  %42 = load i32, i32* @compressed.42, align 16
  %43 = load i32, i32* @compressed.43, align 16
  %44 = load i32, i32* @compressed.44, align 16
  %45 = load i32, i32* @compressed.45, align 16
  %46 = load i32, i32* @compressed.46, align 16
  %47 = load i32, i32* @compressed.47, align 16
  %48 = load i32, i32* @compressed.48, align 16
  %49 = load i32, i32* @compressed.49, align 16
  br label %for.body.outer

for.body8.i:                                      ; preds = %for.body8.i.preheader, %__non_const_wrapper__.67.exit
  %i.1.i3617 = phi i32 [ %add18.i, %__non_const_wrapper__.67.exit ], [ 0, %for.body8.i.preheader ]
  %div9.i = sdiv i32 %i.1.i3617, 2
  switch i32 %div9.i, label %__non_const_wrapper__.65.exit [
    i32 0, label %csroa.if.then.i241
    i32 1, label %csroa.if.then2.i244
    i32 2, label %csroa.if.then7.i247
    i32 3, label %csroa.if.then12.i250
    i32 4, label %csroa.if.then17.i253
    i32 5, label %csroa.if.then22.i256
    i32 6, label %csroa.if.then27.i259
    i32 7, label %csroa.if.then32.i262
    i32 8, label %csroa.if.then37.i265
    i32 9, label %csroa.if.then42.i268
    i32 10, label %csroa.if.then47.i271
    i32 11, label %csroa.if.then52.i274
    i32 12, label %csroa.if.then57.i277
    i32 13, label %csroa.if.then62.i280
    i32 14, label %csroa.if.then67.i283
    i32 15, label %csroa.if.then72.i286
    i32 16, label %csroa.if.then77.i289
    i32 17, label %csroa.if.then82.i292
    i32 18, label %csroa.if.then87.i295
    i32 19, label %csroa.if.then92.i298
    i32 20, label %csroa.if.then97.i301
    i32 21, label %csroa.if.then102.i304
    i32 22, label %csroa.if.then107.i307
    i32 23, label %csroa.if.then112.i310
    i32 24, label %csroa.if.then117.i313
    i32 25, label %csroa.if.then122.i316
    i32 26, label %csroa.if.then127.i319
    i32 27, label %csroa.if.then132.i322
    i32 28, label %csroa.if.then137.i325
    i32 29, label %csroa.if.then142.i328
    i32 30, label %csroa.if.then147.i331
    i32 31, label %csroa.if.then152.i334
    i32 32, label %csroa.if.then157.i337
    i32 33, label %csroa.if.then162.i340
    i32 34, label %csroa.if.then167.i343
    i32 35, label %csroa.if.then172.i346
    i32 36, label %csroa.if.then177.i349
    i32 37, label %csroa.if.then182.i352
    i32 38, label %csroa.if.then187.i355
    i32 39, label %csroa.if.then192.i358
    i32 40, label %csroa.if.then197.i361
    i32 41, label %csroa.if.then202.i364
    i32 42, label %csroa.if.then207.i367
    i32 43, label %csroa.if.then212.i370
    i32 44, label %csroa.if.then217.i373
    i32 45, label %csroa.if.then222.i376
    i32 46, label %csroa.if.then227.i379
    i32 47, label %csroa.if.then232.i382
    i32 48, label %csroa.if.then237.i385
    i32 49, label %csroa.if.then242.i388
    i32 50, label %csroa.if.then247.i391
    i32 51, label %csroa.if.then252.i394
    i32 52, label %csroa.if.then257.i397
    i32 53, label %csroa.if.then262.i400
    i32 54, label %csroa.if.then267.i403
    i32 55, label %csroa.if.then272.i406
    i32 56, label %csroa.if.then277.i409
    i32 57, label %csroa.if.then282.i412
    i32 58, label %csroa.if.then287.i415
    i32 59, label %csroa.if.then292.i418
    i32 60, label %csroa.if.then297.i421
    i32 61, label %csroa.if.then302.i424
    i32 62, label %csroa.if.then307.i427
    i32 63, label %csroa.if.then312.i430
    i32 64, label %csroa.if.then317.i433
    i32 65, label %csroa.if.then322.i436
    i32 66, label %csroa.if.then327.i439
    i32 67, label %csroa.if.then332.i442
    i32 68, label %csroa.if.then337.i445
    i32 69, label %csroa.if.then342.i448
    i32 70, label %csroa.if.then347.i451
    i32 71, label %csroa.if.then352.i454
    i32 72, label %csroa.if.then357.i457
    i32 73, label %csroa.if.then362.i460
    i32 74, label %csroa.if.then367.i463
    i32 75, label %csroa.if.then372.i466
    i32 76, label %csroa.if.then377.i469
    i32 77, label %csroa.if.then382.i472
    i32 78, label %csroa.if.then387.i475
    i32 79, label %csroa.if.then392.i478
    i32 80, label %csroa.if.then397.i481
    i32 81, label %csroa.if.then402.i484
    i32 82, label %csroa.if.then407.i487
    i32 83, label %csroa.if.then412.i490
    i32 84, label %csroa.if.then417.i493
    i32 85, label %csroa.if.then422.i496
    i32 86, label %csroa.if.then427.i499
    i32 87, label %csroa.if.then432.i502
    i32 88, label %csroa.if.then437.i505
    i32 89, label %csroa.if.then442.i508
    i32 90, label %csroa.if.then447.i511
    i32 91, label %csroa.if.then452.i514
    i32 92, label %csroa.if.then457.i517
    i32 93, label %csroa.if.then462.i520
    i32 94, label %csroa.if.then467.i523
    i32 95, label %csroa.if.then472.i526
    i32 96, label %csroa.if.then477.i529
    i32 97, label %csroa.if.then482.i532
    i32 98, label %csroa.if.then487.i535
    i32 99, label %csroa.if.then492.i538
  ]

csroa.if.then.i241:                               ; preds = %for.body8.i
  %50 = load i32, i32* @compressed.0, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then2.i244:                              ; preds = %for.body8.i
  %51 = load i32, i32* @compressed.1, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then7.i247:                              ; preds = %for.body8.i
  %52 = load i32, i32* @compressed.2, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then12.i250:                             ; preds = %for.body8.i
  %53 = load i32, i32* @compressed.3, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then17.i253:                             ; preds = %for.body8.i
  %54 = load i32, i32* @compressed.4, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then22.i256:                             ; preds = %for.body8.i
  %55 = load i32, i32* @compressed.5, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then27.i259:                             ; preds = %for.body8.i
  %56 = load i32, i32* @compressed.6, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then32.i262:                             ; preds = %for.body8.i
  %57 = load i32, i32* @compressed.7, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then37.i265:                             ; preds = %for.body8.i
  %58 = load i32, i32* @compressed.8, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then42.i268:                             ; preds = %for.body8.i
  %59 = load i32, i32* @compressed.9, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then47.i271:                             ; preds = %for.body8.i
  %60 = load i32, i32* @compressed.10, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then52.i274:                             ; preds = %for.body8.i
  %61 = load i32, i32* @compressed.11, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then57.i277:                             ; preds = %for.body8.i
  %62 = load i32, i32* @compressed.12, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then62.i280:                             ; preds = %for.body8.i
  %63 = load i32, i32* @compressed.13, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then67.i283:                             ; preds = %for.body8.i
  %64 = load i32, i32* @compressed.14, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then72.i286:                             ; preds = %for.body8.i
  %65 = load i32, i32* @compressed.15, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then77.i289:                             ; preds = %for.body8.i
  %66 = load i32, i32* @compressed.16, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then82.i292:                             ; preds = %for.body8.i
  %67 = load i32, i32* @compressed.17, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then87.i295:                             ; preds = %for.body8.i
  %68 = load i32, i32* @compressed.18, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then92.i298:                             ; preds = %for.body8.i
  %69 = load i32, i32* @compressed.19, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then97.i301:                             ; preds = %for.body8.i
  %70 = load i32, i32* @compressed.20, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then102.i304:                            ; preds = %for.body8.i
  %71 = load i32, i32* @compressed.21, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then107.i307:                            ; preds = %for.body8.i
  %72 = load i32, i32* @compressed.22, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then112.i310:                            ; preds = %for.body8.i
  %73 = load i32, i32* @compressed.23, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then117.i313:                            ; preds = %for.body8.i
  %74 = load i32, i32* @compressed.24, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then122.i316:                            ; preds = %for.body8.i
  %75 = load i32, i32* @compressed.25, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then127.i319:                            ; preds = %for.body8.i
  %76 = load i32, i32* @compressed.26, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then132.i322:                            ; preds = %for.body8.i
  %77 = load i32, i32* @compressed.27, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then137.i325:                            ; preds = %for.body8.i
  %78 = load i32, i32* @compressed.28, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then142.i328:                            ; preds = %for.body8.i
  %79 = load i32, i32* @compressed.29, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then147.i331:                            ; preds = %for.body8.i
  %80 = load i32, i32* @compressed.30, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then152.i334:                            ; preds = %for.body8.i
  %81 = load i32, i32* @compressed.31, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then157.i337:                            ; preds = %for.body8.i
  %82 = load i32, i32* @compressed.32, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then162.i340:                            ; preds = %for.body8.i
  %83 = load i32, i32* @compressed.33, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then167.i343:                            ; preds = %for.body8.i
  %84 = load i32, i32* @compressed.34, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then172.i346:                            ; preds = %for.body8.i
  %85 = load i32, i32* @compressed.35, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then177.i349:                            ; preds = %for.body8.i
  %86 = load i32, i32* @compressed.36, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then182.i352:                            ; preds = %for.body8.i
  %87 = load i32, i32* @compressed.37, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then187.i355:                            ; preds = %for.body8.i
  %88 = load i32, i32* @compressed.38, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then192.i358:                            ; preds = %for.body8.i
  %89 = load i32, i32* @compressed.39, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then197.i361:                            ; preds = %for.body8.i
  %90 = load i32, i32* @compressed.40, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then202.i364:                            ; preds = %for.body8.i
  %91 = load i32, i32* @compressed.41, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then207.i367:                            ; preds = %for.body8.i
  %92 = load i32, i32* @compressed.42, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then212.i370:                            ; preds = %for.body8.i
  %93 = load i32, i32* @compressed.43, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then217.i373:                            ; preds = %for.body8.i
  %94 = load i32, i32* @compressed.44, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then222.i376:                            ; preds = %for.body8.i
  %95 = load i32, i32* @compressed.45, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then227.i379:                            ; preds = %for.body8.i
  %96 = load i32, i32* @compressed.46, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then232.i382:                            ; preds = %for.body8.i
  %97 = load i32, i32* @compressed.47, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then237.i385:                            ; preds = %for.body8.i
  %98 = load i32, i32* @compressed.48, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then242.i388:                            ; preds = %for.body8.i
  %99 = load i32, i32* @compressed.49, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then247.i391:                            ; preds = %for.body8.i
  %100 = load i32, i32* @compressed.50, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then252.i394:                            ; preds = %for.body8.i
  %101 = load i32, i32* @compressed.51, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then257.i397:                            ; preds = %for.body8.i
  %102 = load i32, i32* @compressed.52, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then262.i400:                            ; preds = %for.body8.i
  %103 = load i32, i32* @compressed.53, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then267.i403:                            ; preds = %for.body8.i
  %104 = load i32, i32* @compressed.54, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then272.i406:                            ; preds = %for.body8.i
  %105 = load i32, i32* @compressed.55, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then277.i409:                            ; preds = %for.body8.i
  %106 = load i32, i32* @compressed.56, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then282.i412:                            ; preds = %for.body8.i
  %107 = load i32, i32* @compressed.57, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then287.i415:                            ; preds = %for.body8.i
  %108 = load i32, i32* @compressed.58, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then292.i418:                            ; preds = %for.body8.i
  %109 = load i32, i32* @compressed.59, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then297.i421:                            ; preds = %for.body8.i
  %110 = load i32, i32* @compressed.60, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then302.i424:                            ; preds = %for.body8.i
  %111 = load i32, i32* @compressed.61, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then307.i427:                            ; preds = %for.body8.i
  %112 = load i32, i32* @compressed.62, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then312.i430:                            ; preds = %for.body8.i
  %113 = load i32, i32* @compressed.63, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then317.i433:                            ; preds = %for.body8.i
  %114 = load i32, i32* @compressed.64, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then322.i436:                            ; preds = %for.body8.i
  %115 = load i32, i32* @compressed.65, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then327.i439:                            ; preds = %for.body8.i
  %116 = load i32, i32* @compressed.66, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then332.i442:                            ; preds = %for.body8.i
  %117 = load i32, i32* @compressed.67, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then337.i445:                            ; preds = %for.body8.i
  %118 = load i32, i32* @compressed.68, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then342.i448:                            ; preds = %for.body8.i
  %119 = load i32, i32* @compressed.69, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then347.i451:                            ; preds = %for.body8.i
  %120 = load i32, i32* @compressed.70, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then352.i454:                            ; preds = %for.body8.i
  %121 = load i32, i32* @compressed.71, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then357.i457:                            ; preds = %for.body8.i
  %122 = load i32, i32* @compressed.72, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then362.i460:                            ; preds = %for.body8.i
  %123 = load i32, i32* @compressed.73, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then367.i463:                            ; preds = %for.body8.i
  %124 = load i32, i32* @compressed.74, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then372.i466:                            ; preds = %for.body8.i
  %125 = load i32, i32* @compressed.75, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then377.i469:                            ; preds = %for.body8.i
  %126 = load i32, i32* @compressed.76, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then382.i472:                            ; preds = %for.body8.i
  %127 = load i32, i32* @compressed.77, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then387.i475:                            ; preds = %for.body8.i
  %128 = load i32, i32* @compressed.78, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then392.i478:                            ; preds = %for.body8.i
  %129 = load i32, i32* @compressed.79, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then397.i481:                            ; preds = %for.body8.i
  %130 = load i32, i32* @compressed.80, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then402.i484:                            ; preds = %for.body8.i
  %131 = load i32, i32* @compressed.81, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then407.i487:                            ; preds = %for.body8.i
  %132 = load i32, i32* @compressed.82, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then412.i490:                            ; preds = %for.body8.i
  %133 = load i32, i32* @compressed.83, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then417.i493:                            ; preds = %for.body8.i
  %134 = load i32, i32* @compressed.84, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then422.i496:                            ; preds = %for.body8.i
  %135 = load i32, i32* @compressed.85, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then427.i499:                            ; preds = %for.body8.i
  %136 = load i32, i32* @compressed.86, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then432.i502:                            ; preds = %for.body8.i
  %137 = load i32, i32* @compressed.87, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then437.i505:                            ; preds = %for.body8.i
  %138 = load i32, i32* @compressed.88, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then442.i508:                            ; preds = %for.body8.i
  %139 = load i32, i32* @compressed.89, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then447.i511:                            ; preds = %for.body8.i
  %140 = load i32, i32* @compressed.90, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then452.i514:                            ; preds = %for.body8.i
  %141 = load i32, i32* @compressed.91, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then457.i517:                            ; preds = %for.body8.i
  %142 = load i32, i32* @compressed.92, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then462.i520:                            ; preds = %for.body8.i
  %143 = load i32, i32* @compressed.93, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then467.i523:                            ; preds = %for.body8.i
  %144 = load i32, i32* @compressed.94, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then472.i526:                            ; preds = %for.body8.i
  %145 = load i32, i32* @compressed.95, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then477.i529:                            ; preds = %for.body8.i
  %146 = load i32, i32* @compressed.96, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then482.i532:                            ; preds = %for.body8.i
  %147 = load i32, i32* @compressed.97, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then487.i535:                            ; preds = %for.body8.i
  %148 = load i32, i32* @compressed.98, align 16
  br label %__non_const_wrapper__.65.exit

csroa.if.then492.i538:                            ; preds = %for.body8.i
  %149 = load i32, i32* @compressed.99, align 16
  br label %__non_const_wrapper__.65.exit

__non_const_wrapper__.65.exit:                    ; preds = %csroa.if.then2.i244, %csroa.if.then12.i250, %csroa.if.then22.i256, %csroa.if.then32.i262, %csroa.if.then42.i268, %csroa.if.then52.i274, %csroa.if.then62.i280, %csroa.if.then72.i286, %csroa.if.then82.i292, %csroa.if.then92.i298, %csroa.if.then102.i304, %csroa.if.then112.i310, %csroa.if.then122.i316, %csroa.if.then132.i322, %csroa.if.then142.i328, %csroa.if.then152.i334, %csroa.if.then162.i340, %csroa.if.then172.i346, %csroa.if.then182.i352, %csroa.if.then192.i358, %csroa.if.then202.i364, %csroa.if.then212.i370, %csroa.if.then222.i376, %csroa.if.then232.i382, %csroa.if.then242.i388, %csroa.if.then252.i394, %csroa.if.then262.i400, %csroa.if.then272.i406, %csroa.if.then282.i412, %csroa.if.then292.i418, %csroa.if.then302.i424, %csroa.if.then312.i430, %csroa.if.then322.i436, %csroa.if.then332.i442, %csroa.if.then342.i448, %csroa.if.then352.i454, %csroa.if.then362.i460, %csroa.if.then372.i466, %csroa.if.then382.i472, %csroa.if.then392.i478, %csroa.if.then402.i484, %csroa.if.then412.i490, %csroa.if.then422.i496, %csroa.if.then432.i502, %csroa.if.then442.i508, %csroa.if.then452.i514, %csroa.if.then462.i520, %csroa.if.then472.i526, %csroa.if.then482.i532, %csroa.if.then492.i538, %for.body8.i, %csroa.if.then487.i535, %csroa.if.then477.i529, %csroa.if.then467.i523, %csroa.if.then457.i517, %csroa.if.then447.i511, %csroa.if.then437.i505, %csroa.if.then427.i499, %csroa.if.then417.i493, %csroa.if.then407.i487, %csroa.if.then397.i481, %csroa.if.then387.i475, %csroa.if.then377.i469, %csroa.if.then367.i463, %csroa.if.then357.i457, %csroa.if.then347.i451, %csroa.if.then337.i445, %csroa.if.then327.i439, %csroa.if.then317.i433, %csroa.if.then307.i427, %csroa.if.then297.i421, %csroa.if.then287.i415, %csroa.if.then277.i409, %csroa.if.then267.i403, %csroa.if.then257.i397, %csroa.if.then247.i391, %csroa.if.then237.i385, %csroa.if.then227.i379, %csroa.if.then217.i373, %csroa.if.then207.i367, %csroa.if.then197.i361, %csroa.if.then187.i355, %csroa.if.then177.i349, %csroa.if.then167.i343, %csroa.if.then157.i337, %csroa.if.then147.i331, %csroa.if.then137.i325, %csroa.if.then127.i319, %csroa.if.then117.i313, %csroa.if.then107.i307, %csroa.if.then97.i301, %csroa.if.then87.i295, %csroa.if.then77.i289, %csroa.if.then67.i283, %csroa.if.then57.i277, %csroa.if.then47.i271, %csroa.if.then37.i265, %csroa.if.then27.i259, %csroa.if.then17.i253, %csroa.if.then7.i247, %csroa.if.then.i241
  %.phi.i730 = phi i32 [ %50, %csroa.if.then.i241 ], [ %51, %csroa.if.then2.i244 ], [ %52, %csroa.if.then7.i247 ], [ %53, %csroa.if.then12.i250 ], [ %54, %csroa.if.then17.i253 ], [ %55, %csroa.if.then22.i256 ], [ %56, %csroa.if.then27.i259 ], [ %57, %csroa.if.then32.i262 ], [ %58, %csroa.if.then37.i265 ], [ %59, %csroa.if.then42.i268 ], [ %60, %csroa.if.then47.i271 ], [ %61, %csroa.if.then52.i274 ], [ %62, %csroa.if.then57.i277 ], [ %63, %csroa.if.then62.i280 ], [ %64, %csroa.if.then67.i283 ], [ %65, %csroa.if.then72.i286 ], [ %66, %csroa.if.then77.i289 ], [ %67, %csroa.if.then82.i292 ], [ %68, %csroa.if.then87.i295 ], [ %69, %csroa.if.then92.i298 ], [ %70, %csroa.if.then97.i301 ], [ %71, %csroa.if.then102.i304 ], [ %72, %csroa.if.then107.i307 ], [ %73, %csroa.if.then112.i310 ], [ %74, %csroa.if.then117.i313 ], [ %75, %csroa.if.then122.i316 ], [ %76, %csroa.if.then127.i319 ], [ %77, %csroa.if.then132.i322 ], [ %78, %csroa.if.then137.i325 ], [ %79, %csroa.if.then142.i328 ], [ %80, %csroa.if.then147.i331 ], [ %81, %csroa.if.then152.i334 ], [ %82, %csroa.if.then157.i337 ], [ %83, %csroa.if.then162.i340 ], [ %84, %csroa.if.then167.i343 ], [ %85, %csroa.if.then172.i346 ], [ %86, %csroa.if.then177.i349 ], [ %87, %csroa.if.then182.i352 ], [ %88, %csroa.if.then187.i355 ], [ %89, %csroa.if.then192.i358 ], [ %90, %csroa.if.then197.i361 ], [ %91, %csroa.if.then202.i364 ], [ %92, %csroa.if.then207.i367 ], [ %93, %csroa.if.then212.i370 ], [ %94, %csroa.if.then217.i373 ], [ %95, %csroa.if.then222.i376 ], [ %96, %csroa.if.then227.i379 ], [ %97, %csroa.if.then232.i382 ], [ %98, %csroa.if.then237.i385 ], [ %99, %csroa.if.then242.i388 ], [ %100, %csroa.if.then247.i391 ], [ %101, %csroa.if.then252.i394 ], [ %102, %csroa.if.then257.i397 ], [ %103, %csroa.if.then262.i400 ], [ %104, %csroa.if.then267.i403 ], [ %105, %csroa.if.then272.i406 ], [ %106, %csroa.if.then277.i409 ], [ %107, %csroa.if.then282.i412 ], [ %108, %csroa.if.then287.i415 ], [ %109, %csroa.if.then292.i418 ], [ %110, %csroa.if.then297.i421 ], [ %111, %csroa.if.then302.i424 ], [ %112, %csroa.if.then307.i427 ], [ %113, %csroa.if.then312.i430 ], [ %114, %csroa.if.then317.i433 ], [ %115, %csroa.if.then322.i436 ], [ %116, %csroa.if.then327.i439 ], [ %117, %csroa.if.then332.i442 ], [ %118, %csroa.if.then337.i445 ], [ %119, %csroa.if.then342.i448 ], [ %120, %csroa.if.then347.i451 ], [ %121, %csroa.if.then352.i454 ], [ %122, %csroa.if.then357.i457 ], [ %123, %csroa.if.then362.i460 ], [ %124, %csroa.if.then367.i463 ], [ %125, %csroa.if.then372.i466 ], [ %126, %csroa.if.then377.i469 ], [ %127, %csroa.if.then382.i472 ], [ %128, %csroa.if.then387.i475 ], [ %129, %csroa.if.then392.i478 ], [ %130, %csroa.if.then397.i481 ], [ %131, %csroa.if.then402.i484 ], [ %132, %csroa.if.then407.i487 ], [ %133, %csroa.if.then412.i490 ], [ %134, %csroa.if.then417.i493 ], [ %135, %csroa.if.then422.i496 ], [ %136, %csroa.if.then427.i499 ], [ %137, %csroa.if.then432.i502 ], [ %138, %csroa.if.then437.i505 ], [ %139, %csroa.if.then442.i508 ], [ %140, %csroa.if.then447.i511 ], [ %141, %csroa.if.then452.i514 ], [ %142, %csroa.if.then457.i517 ], [ %143, %csroa.if.then462.i520 ], [ %144, %csroa.if.then467.i523 ], [ %145, %csroa.if.then472.i526 ], [ %146, %csroa.if.then477.i529 ], [ %147, %csroa.if.then482.i532 ], [ %148, %csroa.if.then487.i535 ], [ %149, %csroa.if.then492.i538 ], [ undef, %for.body8.i ]
  tail call void @decode.v0.C.c.c(i32 %.phi.i730) #5
  %150 = load i32, i32* @xout1, align 4
  switch i32 %i.1.i3617, label %csroa.if.else7.i737 [
    i32 0, label %csroa.if.then.i732
    i32 2, label %__non_const_wrapper__.66.exit.sink.split
  ]

csroa.if.then.i732:                               ; preds = %__non_const_wrapper__.65.exit
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.else7.i737:                              ; preds = %__non_const_wrapper__.65.exit
  switch i32 %i.1.i3617, label %__non_const_wrapper__.66.exit [
    i32 4, label %__non_const_wrapper__.66.exit.sink.split
    i32 6, label %csroa.if.then22.i744
    i32 8, label %csroa.if.then30.i748
    i32 10, label %csroa.if.then38.i752
    i32 12, label %csroa.if.then46.i756
    i32 14, label %csroa.if.then54.i760
    i32 16, label %csroa.if.then62.i764
    i32 18, label %csroa.if.then70.i768
    i32 20, label %csroa.if.then78.i772
    i32 22, label %csroa.if.then86.i776
    i32 24, label %csroa.if.then94.i780
    i32 26, label %csroa.if.then102.i784
    i32 28, label %csroa.if.then110.i788
    i32 30, label %csroa.if.then118.i792
    i32 32, label %csroa.if.then126.i796
    i32 34, label %csroa.if.then134.i800
    i32 36, label %csroa.if.then142.i804
    i32 38, label %csroa.if.then150.i808
    i32 40, label %csroa.if.then158.i812
    i32 42, label %csroa.if.then166.i816
    i32 44, label %csroa.if.then174.i820
    i32 46, label %csroa.if.then182.i824
    i32 48, label %csroa.if.then190.i828
    i32 50, label %csroa.if.then198.i832
    i32 52, label %csroa.if.then206.i836
    i32 54, label %csroa.if.then214.i840
    i32 56, label %csroa.if.then222.i844
    i32 58, label %csroa.if.then230.i848
    i32 60, label %csroa.if.then238.i852
    i32 62, label %csroa.if.then246.i856
    i32 64, label %csroa.if.then254.i860
    i32 66, label %csroa.if.then262.i864
    i32 68, label %csroa.if.then270.i868
    i32 70, label %csroa.if.then278.i872
    i32 72, label %csroa.if.then286.i876
    i32 74, label %csroa.if.then294.i880
    i32 76, label %csroa.if.then302.i884
    i32 78, label %csroa.if.then310.i888
    i32 80, label %csroa.if.then318.i892
    i32 82, label %csroa.if.then326.i896
    i32 84, label %csroa.if.then334.i900
    i32 86, label %csroa.if.then342.i904
    i32 88, label %csroa.if.then350.i908
    i32 90, label %csroa.if.then358.i912
    i32 92, label %csroa.if.then366.i916
    i32 94, label %csroa.if.then374.i920
    i32 96, label %csroa.if.then382.i924
    i32 98, label %csroa.if.then390.i928
  ]

csroa.if.then22.i744:                             ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then30.i748:                             ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then38.i752:                             ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then46.i756:                             ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then54.i760:                             ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then62.i764:                             ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then70.i768:                             ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then78.i772:                             ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then86.i776:                             ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then94.i780:                             ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then102.i784:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then110.i788:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then118.i792:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then126.i796:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then134.i800:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then142.i804:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then150.i808:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then158.i812:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then166.i816:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then174.i820:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then182.i824:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then190.i828:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then198.i832:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then206.i836:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then214.i840:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then222.i844:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then230.i848:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then238.i852:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then246.i856:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then254.i860:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then262.i864:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then270.i868:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then278.i872:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then286.i876:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then294.i880:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then302.i884:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then310.i888:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then318.i892:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then326.i896:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then334.i900:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then342.i904:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then350.i908:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then358.i912:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then366.i916:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then374.i920:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then382.i924:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

csroa.if.then390.i928:                            ; preds = %csroa.if.else7.i737
  br label %__non_const_wrapper__.66.exit.sink.split

__non_const_wrapper__.66.exit.sink.split:         ; preds = %csroa.if.else7.i737, %__non_const_wrapper__.65.exit, %csroa.if.then.i732, %csroa.if.then30.i748, %csroa.if.then46.i756, %csroa.if.then62.i764, %csroa.if.then78.i772, %csroa.if.then94.i780, %csroa.if.then110.i788, %csroa.if.then126.i796, %csroa.if.then142.i804, %csroa.if.then158.i812, %csroa.if.then174.i820, %csroa.if.then190.i828, %csroa.if.then206.i836, %csroa.if.then222.i844, %csroa.if.then238.i852, %csroa.if.then254.i860, %csroa.if.then270.i868, %csroa.if.then286.i876, %csroa.if.then302.i884, %csroa.if.then318.i892, %csroa.if.then334.i900, %csroa.if.then350.i908, %csroa.if.then366.i916, %csroa.if.then382.i924, %csroa.if.then390.i928, %csroa.if.then374.i920, %csroa.if.then358.i912, %csroa.if.then342.i904, %csroa.if.then326.i896, %csroa.if.then310.i888, %csroa.if.then294.i880, %csroa.if.then278.i872, %csroa.if.then262.i864, %csroa.if.then246.i856, %csroa.if.then230.i848, %csroa.if.then214.i840, %csroa.if.then198.i832, %csroa.if.then182.i824, %csroa.if.then166.i816, %csroa.if.then150.i808, %csroa.if.then134.i800, %csroa.if.then118.i792, %csroa.if.then102.i784, %csroa.if.then86.i776, %csroa.if.then70.i768, %csroa.if.then54.i760, %csroa.if.then38.i752, %csroa.if.then22.i744
  %result.2.sink = phi i32* [ @result.6, %csroa.if.then22.i744 ], [ @result.10, %csroa.if.then38.i752 ], [ @result.14, %csroa.if.then54.i760 ], [ @result.18, %csroa.if.then70.i768 ], [ @result.22, %csroa.if.then86.i776 ], [ @result.26, %csroa.if.then102.i784 ], [ @result.30, %csroa.if.then118.i792 ], [ @result.34, %csroa.if.then134.i800 ], [ @result.38, %csroa.if.then150.i808 ], [ @result.42, %csroa.if.then166.i816 ], [ @result.46, %csroa.if.then182.i824 ], [ @result.50, %csroa.if.then198.i832 ], [ @result.54, %csroa.if.then214.i840 ], [ @result.58, %csroa.if.then230.i848 ], [ @result.62, %csroa.if.then246.i856 ], [ @result.66, %csroa.if.then262.i864 ], [ @result.70, %csroa.if.then278.i872 ], [ @result.74, %csroa.if.then294.i880 ], [ @result.78, %csroa.if.then310.i888 ], [ @result.82, %csroa.if.then326.i896 ], [ @result.86, %csroa.if.then342.i904 ], [ @result.90, %csroa.if.then358.i912 ], [ @result.94, %csroa.if.then374.i920 ], [ @result.98, %csroa.if.then390.i928 ], [ @result.96, %csroa.if.then382.i924 ], [ @result.92, %csroa.if.then366.i916 ], [ @result.88, %csroa.if.then350.i908 ], [ @result.84, %csroa.if.then334.i900 ], [ @result.80, %csroa.if.then318.i892 ], [ @result.76, %csroa.if.then302.i884 ], [ @result.72, %csroa.if.then286.i876 ], [ @result.68, %csroa.if.then270.i868 ], [ @result.64, %csroa.if.then254.i860 ], [ @result.60, %csroa.if.then238.i852 ], [ @result.56, %csroa.if.then222.i844 ], [ @result.52, %csroa.if.then206.i836 ], [ @result.48, %csroa.if.then190.i828 ], [ @result.44, %csroa.if.then174.i820 ], [ @result.40, %csroa.if.then158.i812 ], [ @result.36, %csroa.if.then142.i804 ], [ @result.32, %csroa.if.then126.i796 ], [ @result.28, %csroa.if.then110.i788 ], [ @result.24, %csroa.if.then94.i780 ], [ @result.20, %csroa.if.then78.i772 ], [ @result.16, %csroa.if.then62.i764 ], [ @result.12, %csroa.if.then46.i756 ], [ @result.8, %csroa.if.then30.i748 ], [ @result.0, %csroa.if.then.i732 ], [ @result.2, %__non_const_wrapper__.65.exit ], [ @result.4, %csroa.if.else7.i737 ]
  store i32 %150, i32* %result.2.sink, align 16
  br label %__non_const_wrapper__.66.exit

__non_const_wrapper__.66.exit:                    ; preds = %__non_const_wrapper__.66.exit.sink.split, %csroa.if.else7.i737
  %151 = load i32, i32* @xout2, align 4
  %add14.i = or i32 %i.1.i3617, 1
  switch i32 %add14.i, label %__non_const_wrapper__.67.exit [
    i32 1, label %csroa.if.then2.i1032
    i32 3, label %__non_const_wrapper__.67.exit.sink.split
    i32 5, label %csroa.if.then18.i1040
    i32 7, label %csroa.if.then26.i1044
    i32 9, label %csroa.if.then34.i1048
    i32 11, label %csroa.if.then42.i1052
    i32 13, label %csroa.if.then50.i1056
    i32 15, label %csroa.if.then58.i1060
    i32 17, label %csroa.if.then66.i1064
    i32 19, label %csroa.if.then74.i1068
    i32 21, label %csroa.if.then82.i1072
    i32 23, label %csroa.if.then90.i1076
    i32 25, label %csroa.if.then98.i1080
    i32 27, label %csroa.if.then106.i1084
    i32 29, label %csroa.if.then114.i1088
    i32 31, label %csroa.if.then122.i1092
    i32 33, label %csroa.if.then130.i1096
    i32 35, label %csroa.if.then138.i1100
    i32 37, label %csroa.if.then146.i1104
    i32 39, label %csroa.if.then154.i1108
    i32 41, label %csroa.if.then162.i1112
    i32 43, label %csroa.if.then170.i1116
    i32 45, label %csroa.if.then178.i1120
    i32 47, label %csroa.if.then186.i1124
    i32 49, label %csroa.if.then194.i1128
    i32 51, label %csroa.if.then202.i1132
    i32 53, label %csroa.if.then210.i1136
    i32 55, label %csroa.if.then218.i1140
    i32 57, label %csroa.if.then226.i1144
    i32 59, label %csroa.if.then234.i1148
    i32 61, label %csroa.if.then242.i1152
    i32 63, label %csroa.if.then250.i1156
    i32 65, label %csroa.if.then258.i1160
    i32 67, label %csroa.if.then266.i1164
    i32 69, label %csroa.if.then274.i1168
    i32 71, label %csroa.if.then282.i1172
    i32 73, label %csroa.if.then290.i1176
    i32 75, label %csroa.if.then298.i1180
    i32 77, label %csroa.if.then306.i1184
    i32 79, label %csroa.if.then314.i1188
    i32 81, label %csroa.if.then322.i1192
    i32 83, label %csroa.if.then330.i1196
    i32 85, label %csroa.if.then338.i1200
    i32 87, label %csroa.if.then346.i1204
    i32 89, label %csroa.if.then354.i1208
    i32 91, label %csroa.if.then362.i1212
    i32 93, label %csroa.if.then370.i1216
    i32 95, label %csroa.if.then378.i1220
    i32 97, label %csroa.if.then386.i1224
    i32 99, label %csroa.if.then394.i1228
  ]

csroa.if.then2.i1032:                             ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then18.i1040:                            ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then26.i1044:                            ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then34.i1048:                            ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then42.i1052:                            ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then50.i1056:                            ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then58.i1060:                            ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then66.i1064:                            ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then74.i1068:                            ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then82.i1072:                            ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then90.i1076:                            ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then98.i1080:                            ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then106.i1084:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then114.i1088:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then122.i1092:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then130.i1096:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then138.i1100:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then146.i1104:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then154.i1108:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then162.i1112:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then170.i1116:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then178.i1120:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then186.i1124:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then194.i1128:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then202.i1132:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then210.i1136:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then218.i1140:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then226.i1144:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then234.i1148:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then242.i1152:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then250.i1156:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then258.i1160:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then266.i1164:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then274.i1168:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then282.i1172:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then290.i1176:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then298.i1180:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then306.i1184:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then314.i1188:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then322.i1192:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then330.i1196:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then338.i1200:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then346.i1204:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then354.i1208:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then362.i1212:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then370.i1216:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then378.i1220:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then386.i1224:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

csroa.if.then394.i1228:                           ; preds = %__non_const_wrapper__.66.exit
  br label %__non_const_wrapper__.67.exit.sink.split

__non_const_wrapper__.67.exit.sink.split:         ; preds = %__non_const_wrapper__.66.exit, %csroa.if.then2.i1032, %csroa.if.then18.i1040, %csroa.if.then34.i1048, %csroa.if.then50.i1056, %csroa.if.then66.i1064, %csroa.if.then82.i1072, %csroa.if.then98.i1080, %csroa.if.then114.i1088, %csroa.if.then130.i1096, %csroa.if.then146.i1104, %csroa.if.then162.i1112, %csroa.if.then178.i1120, %csroa.if.then194.i1128, %csroa.if.then210.i1136, %csroa.if.then226.i1144, %csroa.if.then242.i1152, %csroa.if.then258.i1160, %csroa.if.then274.i1168, %csroa.if.then290.i1176, %csroa.if.then306.i1184, %csroa.if.then322.i1192, %csroa.if.then338.i1200, %csroa.if.then354.i1208, %csroa.if.then370.i1216, %csroa.if.then386.i1224, %csroa.if.then394.i1228, %csroa.if.then378.i1220, %csroa.if.then362.i1212, %csroa.if.then346.i1204, %csroa.if.then330.i1196, %csroa.if.then314.i1188, %csroa.if.then298.i1180, %csroa.if.then282.i1172, %csroa.if.then266.i1164, %csroa.if.then250.i1156, %csroa.if.then234.i1148, %csroa.if.then218.i1140, %csroa.if.then202.i1132, %csroa.if.then186.i1124, %csroa.if.then170.i1116, %csroa.if.then154.i1108, %csroa.if.then138.i1100, %csroa.if.then122.i1092, %csroa.if.then106.i1084, %csroa.if.then90.i1076, %csroa.if.then74.i1068, %csroa.if.then58.i1060, %csroa.if.then42.i1052, %csroa.if.then26.i1044
  %result.3.sink = phi i32* [ @result.7, %csroa.if.then26.i1044 ], [ @result.11, %csroa.if.then42.i1052 ], [ @result.15, %csroa.if.then58.i1060 ], [ @result.19, %csroa.if.then74.i1068 ], [ @result.23, %csroa.if.then90.i1076 ], [ @result.27, %csroa.if.then106.i1084 ], [ @result.31, %csroa.if.then122.i1092 ], [ @result.35, %csroa.if.then138.i1100 ], [ @result.39, %csroa.if.then154.i1108 ], [ @result.43, %csroa.if.then170.i1116 ], [ @result.47, %csroa.if.then186.i1124 ], [ @result.51, %csroa.if.then202.i1132 ], [ @result.55, %csroa.if.then218.i1140 ], [ @result.59, %csroa.if.then234.i1148 ], [ @result.63, %csroa.if.then250.i1156 ], [ @result.67, %csroa.if.then266.i1164 ], [ @result.71, %csroa.if.then282.i1172 ], [ @result.75, %csroa.if.then298.i1180 ], [ @result.79, %csroa.if.then314.i1188 ], [ @result.83, %csroa.if.then330.i1196 ], [ @result.87, %csroa.if.then346.i1204 ], [ @result.91, %csroa.if.then362.i1212 ], [ @result.95, %csroa.if.then378.i1220 ], [ @result.99, %csroa.if.then394.i1228 ], [ @result.97, %csroa.if.then386.i1224 ], [ @result.93, %csroa.if.then370.i1216 ], [ @result.89, %csroa.if.then354.i1208 ], [ @result.85, %csroa.if.then338.i1200 ], [ @result.81, %csroa.if.then322.i1192 ], [ @result.77, %csroa.if.then306.i1184 ], [ @result.73, %csroa.if.then290.i1176 ], [ @result.69, %csroa.if.then274.i1168 ], [ @result.65, %csroa.if.then258.i1160 ], [ @result.61, %csroa.if.then242.i1152 ], [ @result.57, %csroa.if.then226.i1144 ], [ @result.53, %csroa.if.then210.i1136 ], [ @result.49, %csroa.if.then194.i1128 ], [ @result.45, %csroa.if.then178.i1120 ], [ @result.41, %csroa.if.then162.i1112 ], [ @result.37, %csroa.if.then146.i1104 ], [ @result.33, %csroa.if.then130.i1096 ], [ @result.29, %csroa.if.then114.i1088 ], [ @result.25, %csroa.if.then98.i1080 ], [ @result.21, %csroa.if.then82.i1072 ], [ @result.17, %csroa.if.then66.i1064 ], [ @result.13, %csroa.if.then50.i1056 ], [ @result.9, %csroa.if.then34.i1048 ], [ @result.5, %csroa.if.then18.i1040 ], [ @result.1, %csroa.if.then2.i1032 ], [ @result.3, %__non_const_wrapper__.66.exit ]
  store i32 %151, i32* %result.3.sink, align 16
  br label %__non_const_wrapper__.67.exit

__non_const_wrapper__.67.exit:                    ; preds = %__non_const_wrapper__.66.exit, %__non_const_wrapper__.67.exit.sink.split
  %add18.i = add nuw nsw i32 %i.1.i3617, 2
  %cmp7.i = icmp slt i32 %add18.i, 100
  br i1 %cmp7.i, label %for.body8.i, label %for.cond.preheader

for.cond4.preheader.loopexit:                     ; preds = %__non_const_wrapper__.17.exit
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond4.preheader.loopexit, %__non_const_wrapper__.17.exit.thread3625
  %add.main_result.03631 = phi i32 [ %add.main_result.03628, %__non_const_wrapper__.17.exit.thread3625 ], [ %main_result.03616.ph, %for.cond4.preheader.loopexit ]
  %152 = load i32, i32* @result.0, align 16
  %153 = load i32, i32* @result.1, align 16
  %154 = load i32, i32* @result.2, align 16
  %155 = load i32, i32* @result.3, align 16
  %156 = load i32, i32* @result.4, align 16
  %157 = load i32, i32* @result.5, align 16
  %158 = load i32, i32* @result.6, align 16
  %159 = load i32, i32* @result.7, align 16
  %160 = load i32, i32* @result.8, align 16
  %161 = load i32, i32* @result.9, align 16
  %162 = load i32, i32* @result.10, align 16
  %163 = load i32, i32* @result.11, align 16
  %164 = load i32, i32* @result.12, align 16
  %165 = load i32, i32* @result.13, align 16
  %166 = load i32, i32* @result.14, align 16
  %167 = load i32, i32* @result.15, align 16
  %168 = load i32, i32* @result.16, align 16
  %169 = load i32, i32* @result.17, align 16
  %170 = load i32, i32* @result.18, align 16
  %171 = load i32, i32* @result.19, align 16
  %172 = load i32, i32* @result.20, align 16
  %173 = load i32, i32* @result.21, align 16
  %174 = load i32, i32* @result.22, align 16
  %175 = load i32, i32* @result.23, align 16
  %176 = load i32, i32* @result.24, align 16
  %177 = load i32, i32* @result.25, align 16
  %178 = load i32, i32* @result.26, align 16
  %179 = load i32, i32* @result.27, align 16
  %180 = load i32, i32* @result.28, align 16
  %181 = load i32, i32* @result.29, align 16
  %182 = load i32, i32* @result.30, align 16
  %183 = load i32, i32* @result.31, align 16
  %184 = load i32, i32* @result.32, align 16
  %185 = load i32, i32* @result.33, align 16
  %186 = load i32, i32* @result.34, align 16
  %187 = load i32, i32* @result.35, align 16
  %188 = load i32, i32* @result.36, align 16
  %189 = load i32, i32* @result.37, align 16
  %190 = load i32, i32* @result.38, align 16
  %191 = load i32, i32* @result.39, align 16
  %192 = load i32, i32* @result.40, align 16
  %193 = load i32, i32* @result.41, align 16
  %194 = load i32, i32* @result.42, align 16
  %195 = load i32, i32* @result.43, align 16
  %196 = load i32, i32* @result.44, align 16
  %197 = load i32, i32* @result.45, align 16
  %198 = load i32, i32* @result.46, align 16
  %199 = load i32, i32* @result.47, align 16
  %200 = load i32, i32* @result.48, align 16
  %201 = load i32, i32* @result.49, align 16
  %202 = load i32, i32* @result.50, align 16
  %203 = load i32, i32* @result.51, align 16
  %204 = load i32, i32* @result.52, align 16
  %205 = load i32, i32* @result.53, align 16
  %206 = load i32, i32* @result.54, align 16
  %207 = load i32, i32* @result.55, align 16
  %208 = load i32, i32* @result.56, align 16
  %209 = load i32, i32* @result.57, align 16
  %210 = load i32, i32* @result.58, align 16
  %211 = load i32, i32* @result.59, align 16
  %212 = load i32, i32* @result.60, align 16
  %213 = load i32, i32* @result.61, align 16
  %214 = load i32, i32* @result.62, align 16
  %215 = load i32, i32* @result.63, align 16
  %216 = load i32, i32* @result.64, align 16
  %217 = load i32, i32* @result.65, align 16
  %218 = load i32, i32* @result.66, align 16
  %219 = load i32, i32* @result.67, align 16
  %220 = load i32, i32* @result.68, align 16
  %221 = load i32, i32* @result.69, align 16
  %222 = load i32, i32* @result.70, align 16
  %223 = load i32, i32* @result.71, align 16
  %224 = load i32, i32* @result.72, align 16
  %225 = load i32, i32* @result.73, align 16
  %226 = load i32, i32* @result.74, align 16
  %227 = load i32, i32* @result.75, align 16
  %228 = load i32, i32* @result.76, align 16
  %229 = load i32, i32* @result.77, align 16
  %230 = load i32, i32* @result.78, align 16
  %231 = load i32, i32* @result.79, align 16
  %232 = load i32, i32* @result.80, align 16
  %233 = load i32, i32* @result.81, align 16
  %234 = load i32, i32* @result.82, align 16
  %235 = load i32, i32* @result.83, align 16
  %236 = load i32, i32* @result.84, align 16
  %237 = load i32, i32* @result.85, align 16
  %238 = load i32, i32* @result.86, align 16
  %239 = load i32, i32* @result.87, align 16
  %240 = load i32, i32* @result.88, align 16
  %241 = load i32, i32* @result.89, align 16
  %242 = load i32, i32* @result.90, align 16
  %243 = load i32, i32* @result.91, align 16
  %244 = load i32, i32* @result.92, align 16
  %245 = load i32, i32* @result.93, align 16
  %246 = load i32, i32* @result.94, align 16
  %247 = load i32, i32* @result.95, align 16
  %248 = load i32, i32* @result.96, align 16
  %249 = load i32, i32* @result.97, align 16
  %250 = load i32, i32* @result.98, align 16
  %251 = load i32, i32* @result.99, align 16
  %cmp11 = icmp ne i32 %194, 54
  %add13 = zext i1 %cmp11 to i32
  br label %for.body6

for.body:                                         ; preds = %for.body.outer, %__non_const_wrapper__.17.exit
  %i.03615 = phi i32 [ %inc, %__non_const_wrapper__.17.exit ], [ %i.03615.ph, %for.body.outer ]
  switch i32 %i.03615, label %__non_const_wrapper__.17.exit [
    i32 0, label %__non_const_wrapper__.17.exit.thread.loopexit
    i32 1, label %__non_const_wrapper__.17.exit.thread.loopexit3699
    i32 2, label %csroa.if.else3.i1834.thread3393
    i32 3, label %csroa.if.else3.i1834.thread3394
    i32 4, label %csroa.if.else3.i1834.thread3395
    i32 5, label %csroa.if.else3.i1834.thread3396
    i32 6, label %csroa.if.else3.i1834.thread3397
    i32 7, label %csroa.if.else3.i1834.thread3398
    i32 8, label %csroa.if.else3.i1834.thread3399
    i32 9, label %csroa.if.else3.i1834.thread3400
    i32 10, label %csroa.if.else3.i1834.thread3401
    i32 11, label %csroa.if.else3.i1834.thread3402
    i32 12, label %csroa.if.else3.i1834.thread3403
    i32 13, label %csroa.if.else3.i1834.thread3404
    i32 14, label %csroa.if.then67.i1372
    i32 15, label %csroa.if.then72.i1375
    i32 16, label %csroa.if.then77.i1378
    i32 17, label %csroa.if.then82.i1381
    i32 18, label %csroa.if.then87.i1384
    i32 19, label %csroa.if.then92.i1387
    i32 20, label %csroa.if.then97.i1390
    i32 21, label %csroa.if.else3.i1834.thread3405
    i32 22, label %csroa.if.else3.i1834.thread3406
    i32 23, label %csroa.if.else3.i1834.thread3407
    i32 24, label %csroa.if.else3.i1834.thread3408
    i32 25, label %csroa.if.else3.i1834.thread3409
    i32 26, label %csroa.if.else3.i1834.thread3410
    i32 27, label %csroa.if.else3.i1834.thread3411
    i32 28, label %csroa.if.else3.i1834.thread3412
    i32 29, label %csroa.if.else3.i1834.thread3413
    i32 30, label %csroa.if.then147.i1420
    i32 31, label %csroa.if.then152.i1423
    i32 32, label %csroa.if.else3.i1834.thread3414
    i32 33, label %csroa.if.then162.i1429
    i32 34, label %csroa.if.then167.i1432
    i32 35, label %csroa.if.else3.i1834.thread3415
    i32 36, label %csroa.if.then177.i1438
    i32 37, label %csroa.if.then182.i1441
    i32 38, label %csroa.if.then187.i1444
    i32 39, label %csroa.if.else3.i1834.thread3416
    i32 40, label %csroa.if.else3.i1834.thread3417
    i32 41, label %csroa.if.else3.i1834.thread3418
    i32 42, label %csroa.if.then207.i1456
    i32 43, label %csroa.if.then212.i1459
    i32 44, label %csroa.if.else3.i1834.thread3419
    i32 45, label %csroa.if.else3.i1834.thread3420
    i32 46, label %csroa.if.else3.i1834.thread3421
    i32 47, label %csroa.if.else3.i1834.thread3422
    i32 48, label %csroa.if.then237.i1474
    i32 49, label %__non_const_wrapper__.17.exit.thread3625
  ]

csroa.if.else3.i1834.thread3393:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3394:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3395:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3396:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3397:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3398:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3399:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3400:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3401:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3402:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3403:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3404:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.then67.i1372:                            ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.then72.i1375:                            ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.then77.i1378:                            ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.then82.i1381:                            ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.then87.i1384:                            ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.then92.i1387:                            ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.then97.i1390:                            ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3405:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3406:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3407:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3408:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3409:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3410:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3411:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3412:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3413:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.then147.i1420:                           ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.then152.i1423:                           ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3414:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.then162.i1429:                           ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.then167.i1432:                           ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3415:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.then177.i1438:                           ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.then182.i1441:                           ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.then187.i1444:                           ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3416:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3417:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3418:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.then207.i1456:                           ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.then212.i1459:                           ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3419:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3420:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3421:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.else3.i1834.thread3422:                  ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

csroa.if.then237.i1474:                           ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

__non_const_wrapper__.17.exit.thread3625:         ; preds = %for.body
  %cmp33626 = icmp ne i32 %49, 248
  %add3627 = zext i1 %cmp33626 to i32
  %add.main_result.03628 = add nsw i32 %add3627, %main_result.03616.ph
  br label %for.cond4.preheader

__non_const_wrapper__.17.exit.thread.loopexit:    ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

__non_const_wrapper__.17.exit.thread.loopexit3699: ; preds = %for.body
  br label %__non_const_wrapper__.17.exit.thread

__non_const_wrapper__.17.exit.thread:             ; preds = %__non_const_wrapper__.17.exit.thread.loopexit3699, %__non_const_wrapper__.17.exit.thread.loopexit, %csroa.if.else3.i1834.thread3393, %csroa.if.else3.i1834.thread3395, %csroa.if.else3.i1834.thread3397, %csroa.if.else3.i1834.thread3399, %csroa.if.else3.i1834.thread3401, %csroa.if.else3.i1834.thread3403, %csroa.if.then67.i1372, %csroa.if.then77.i1378, %csroa.if.then82.i1381, %csroa.if.then72.i1375, %csroa.if.else3.i1834.thread3405, %csroa.if.else3.i1834.thread3407, %csroa.if.else3.i1834.thread3409, %csroa.if.else3.i1834.thread3411, %csroa.if.else3.i1834.thread3413, %csroa.if.else3.i1834.thread3414, %csroa.if.else3.i1834.thread3415, %csroa.if.else3.i1834.thread3416, %csroa.if.else3.i1834.thread3418, %csroa.if.else3.i1834.thread3419, %csroa.if.else3.i1834.thread3421, %csroa.if.then237.i1474, %csroa.if.else3.i1834.thread3422, %csroa.if.else3.i1834.thread3420, %csroa.if.then212.i1459, %csroa.if.then207.i1456, %csroa.if.else3.i1834.thread3417, %csroa.if.then182.i1441, %csroa.if.then187.i1444, %csroa.if.then177.i1438, %csroa.if.then162.i1429, %csroa.if.then167.i1432, %csroa.if.then152.i1423, %csroa.if.then147.i1420, %csroa.if.else3.i1834.thread3412, %csroa.if.else3.i1834.thread3410, %csroa.if.else3.i1834.thread3408, %csroa.if.else3.i1834.thread3406, %csroa.if.then92.i1387, %csroa.if.then97.i1390, %csroa.if.then87.i1384, %csroa.if.else3.i1834.thread3404, %csroa.if.else3.i1834.thread3402, %csroa.if.else3.i1834.thread3400, %csroa.if.else3.i1834.thread3398, %csroa.if.else3.i1834.thread3396, %csroa.if.else3.i1834.thread3394
  %.phi.i18273326.ph = phi i32 [ %48, %csroa.if.then237.i1474 ], [ %47, %csroa.if.else3.i1834.thread3422 ], [ %46, %csroa.if.else3.i1834.thread3421 ], [ %45, %csroa.if.else3.i1834.thread3420 ], [ %44, %csroa.if.else3.i1834.thread3419 ], [ %43, %csroa.if.then212.i1459 ], [ %42, %csroa.if.then207.i1456 ], [ %41, %csroa.if.else3.i1834.thread3418 ], [ %40, %csroa.if.else3.i1834.thread3417 ], [ %39, %csroa.if.else3.i1834.thread3416 ], [ %38, %csroa.if.then187.i1444 ], [ %37, %csroa.if.then182.i1441 ], [ %36, %csroa.if.then177.i1438 ], [ %35, %csroa.if.else3.i1834.thread3415 ], [ %34, %csroa.if.then167.i1432 ], [ %33, %csroa.if.then162.i1429 ], [ %32, %csroa.if.else3.i1834.thread3414 ], [ %31, %csroa.if.then152.i1423 ], [ %30, %csroa.if.then147.i1420 ], [ %29, %csroa.if.else3.i1834.thread3413 ], [ %28, %csroa.if.else3.i1834.thread3412 ], [ %27, %csroa.if.else3.i1834.thread3411 ], [ %26, %csroa.if.else3.i1834.thread3410 ], [ %25, %csroa.if.else3.i1834.thread3409 ], [ %24, %csroa.if.else3.i1834.thread3408 ], [ %23, %csroa.if.else3.i1834.thread3407 ], [ %22, %csroa.if.else3.i1834.thread3406 ], [ %21, %csroa.if.else3.i1834.thread3405 ], [ %20, %csroa.if.then97.i1390 ], [ %19, %csroa.if.then92.i1387 ], [ %18, %csroa.if.then87.i1384 ], [ %17, %csroa.if.then82.i1381 ], [ %16, %csroa.if.then77.i1378 ], [ %15, %csroa.if.then72.i1375 ], [ %14, %csroa.if.then67.i1372 ], [ %13, %csroa.if.else3.i1834.thread3404 ], [ %12, %csroa.if.else3.i1834.thread3403 ], [ %11, %csroa.if.else3.i1834.thread3402 ], [ %10, %csroa.if.else3.i1834.thread3401 ], [ %9, %csroa.if.else3.i1834.thread3400 ], [ %8, %csroa.if.else3.i1834.thread3399 ], [ %7, %csroa.if.else3.i1834.thread3398 ], [ %6, %csroa.if.else3.i1834.thread3397 ], [ %5, %csroa.if.else3.i1834.thread3396 ], [ %4, %csroa.if.else3.i1834.thread3395 ], [ %3, %csroa.if.else3.i1834.thread3394 ], [ %2, %csroa.if.else3.i1834.thread3393 ], [ %0, %__non_const_wrapper__.17.exit.thread.loopexit ], [ %1, %__non_const_wrapper__.17.exit.thread.loopexit3699 ]
  %.phi.i2326.ph = phi i32 [ 248, %csroa.if.then237.i1474 ], [ 249, %csroa.if.else3.i1834.thread3422 ], [ 250, %csroa.if.else3.i1834.thread3421 ], [ 251, %csroa.if.else3.i1834.thread3420 ], [ 247, %csroa.if.else3.i1834.thread3419 ], [ 248, %csroa.if.then212.i1459 ], [ 248, %csroa.if.then207.i1456 ], [ 250, %csroa.if.else3.i1834.thread3418 ], [ 247, %csroa.if.else3.i1834.thread3417 ], [ 248, %csroa.if.else3.i1834.thread3416 ], [ 249, %csroa.if.then187.i1444 ], [ 249, %csroa.if.then182.i1441 ], [ 249, %csroa.if.then177.i1438 ], [ 247, %csroa.if.else3.i1834.thread3415 ], [ 248, %csroa.if.then167.i1432 ], [ 248, %csroa.if.then162.i1429 ], [ 246, %csroa.if.else3.i1834.thread3414 ], [ 248, %csroa.if.then152.i1423 ], [ 248, %csroa.if.then147.i1420 ], [ 249, %csroa.if.else3.i1834.thread3413 ], [ 247, %csroa.if.else3.i1834.thread3412 ], [ 248, %csroa.if.else3.i1834.thread3411 ], [ 249, %csroa.if.else3.i1834.thread3410 ], [ 247, %csroa.if.else3.i1834.thread3409 ], [ 248, %csroa.if.else3.i1834.thread3408 ], [ 247, %csroa.if.else3.i1834.thread3407 ], [ 248, %csroa.if.else3.i1834.thread3406 ], [ 247, %csroa.if.else3.i1834.thread3405 ], [ 246, %csroa.if.then97.i1390 ], [ 246, %csroa.if.then92.i1387 ], [ 246, %csroa.if.then87.i1384 ], [ 245, %csroa.if.then82.i1381 ], [ 245, %csroa.if.then77.i1378 ], [ 245, %csroa.if.then72.i1375 ], [ 245, %csroa.if.then67.i1372 ], [ 244, %csroa.if.else3.i1834.thread3404 ], [ 243, %csroa.if.else3.i1834.thread3403 ], [ 241, %csroa.if.else3.i1834.thread3402 ], [ 239, %csroa.if.else3.i1834.thread3401 ], [ 237, %csroa.if.else3.i1834.thread3400 ], [ 236, %csroa.if.else3.i1834.thread3399 ], [ 160, %csroa.if.else3.i1834.thread3398 ], [ 32, %csroa.if.else3.i1834.thread3397 ], [ 144, %csroa.if.else3.i1834.thread3396 ], [ 242, %csroa.if.else3.i1834.thread3395 ], [ 186, %csroa.if.else3.i1834.thread3394 ], [ 119, %csroa.if.else3.i1834.thread3393 ], [ 253, %__non_const_wrapper__.17.exit.thread.loopexit ], [ 222, %__non_const_wrapper__.17.exit.thread.loopexit3699 ]
  %cmp33620 = icmp ne i32 %.phi.i18273326.ph, %.phi.i2326.ph
  %add3621 = zext i1 %cmp33620 to i32
  %add.main_result.03622 = add nsw i32 %add3621, %main_result.03616.ph
  %inc3623 = add nuw nsw i32 %i.03615, 1
  br label %for.body.outer

for.body.outer:                                   ; preds = %__non_const_wrapper__.17.exit.thread, %for.cond.preheader
  %main_result.03616.ph = phi i32 [ %add.main_result.03622, %__non_const_wrapper__.17.exit.thread ], [ 0, %for.cond.preheader ]
  %i.03615.ph = phi i32 [ %inc3623, %__non_const_wrapper__.17.exit.thread ], [ 0, %for.cond.preheader ]
  br label %for.body

__non_const_wrapper__.17.exit:                    ; preds = %for.body
  %inc = add nuw nsw i32 %i.03615, 1
  %exitcond3619 = icmp eq i32 %inc, 50
  br i1 %exitcond3619, label %for.cond4.preheader.loopexit, label %for.body

for.body6:                                        ; preds = %for.body6.backedge, %for.cond4.preheader
  %main_result.23614 = phi i32 [ %add.main_result.03631, %for.cond4.preheader ], [ %main_result.23614.be, %for.body6.backedge ]
  %i.13613 = phi i32 [ 0, %for.cond4.preheader ], [ %i.13613.be, %for.body6.backedge ]
  switch i32 %i.13613, label %__non_const_wrapper__.19.exit [
    i32 0, label %__non_const_wrapper__.19.exit.thread
    i32 1, label %__non_const_wrapper__.18.exit.thread3334
    i32 2, label %csroa.if.else3.i2832.thread3537
    i32 3, label %csroa.if.then12.i2337
    i32 4, label %csroa.if.then17.i2340
    i32 5, label %csroa.if.else3.i2832.thread3538
    i32 6, label %csroa.if.then27.i2346
    i32 7, label %csroa.if.then32.i2349
    i32 8, label %csroa.if.then37.i2352
    i32 9, label %csroa.if.then42.i2355
    i32 10, label %csroa.if.then47.i2358
    i32 11, label %csroa.if.then52.i2361
    i32 12, label %csroa.if.then57.i2364
    i32 13, label %csroa.if.then62.i2367
    i32 14, label %csroa.if.else3.i2832.thread3539
    i32 15, label %csroa.if.else3.i2832.thread3540
    i32 16, label %csroa.if.else3.i2832.thread3541
    i32 17, label %csroa.if.else3.i2832.thread3542
    i32 18, label %csroa.if.else3.i2832.thread3543
    i32 19, label %csroa.if.else3.i2832.thread3544
    i32 20, label %csroa.if.then97.i2388
    i32 21, label %csroa.if.then102.i2391
    i32 22, label %csroa.if.then107.i2394
    i32 23, label %csroa.if.else3.i2832.thread3545
    i32 24, label %csroa.if.then117.i2400
    i32 25, label %csroa.if.then122.i2403
    i32 26, label %csroa.if.else3.i2832.thread3546
    i32 27, label %csroa.if.else3.i2832.thread3547
    i32 28, label %csroa.if.then137.i2412
    i32 29, label %csroa.if.then142.i2415
    i32 30, label %csroa.if.else3.i2832.thread3548
    i32 31, label %csroa.if.else3.i2832.thread3549
    i32 32, label %csroa.if.else3.i2832.thread3550
    i32 33, label %csroa.if.else3.i2832.thread3551
    i32 34, label %csroa.if.else3.i2832.thread3552
    i32 35, label %csroa.if.else3.i2832.thread3553
    i32 36, label %csroa.if.else3.i2832.thread3554
    i32 37, label %csroa.if.else3.i2832.thread3555
    i32 38, label %csroa.if.else3.i2832.thread3556
    i32 39, label %csroa.if.else3.i2832.thread3557
    i32 40, label %csroa.if.else3.i2832.thread3558
    i32 41, label %csroa.if.else3.i2832.thread3559
    i32 99, label %__non_const_wrapper__.19.exit.thread3637
    i32 43, label %csroa.if.else3.i2832.thread3561
    i32 44, label %csroa.if.else3.i2832.thread3562
    i32 45, label %csroa.if.else3.i2832.thread3563
    i32 46, label %csroa.if.else3.i2832.thread3564
    i32 47, label %csroa.if.else3.i2832.thread3565
    i32 48, label %csroa.if.else3.i2832.thread3566
    i32 49, label %csroa.if.else3.i2832.thread3567
    i32 50, label %csroa.if.else3.i2832.thread3568
    i32 51, label %csroa.if.else3.i2832.thread3569
    i32 52, label %csroa.if.else3.i2832.thread3570
    i32 53, label %csroa.if.else3.i2832.thread3571
    i32 54, label %csroa.if.then267.i2490
    i32 55, label %csroa.if.then272.i2493
    i32 56, label %csroa.if.else3.i2832.thread3572
    i32 57, label %csroa.if.else3.i2832.thread3573
    i32 58, label %csroa.if.else3.i2832.thread3574
    i32 59, label %csroa.if.else3.i2832.thread3575
    i32 60, label %csroa.if.else3.i2832.thread3576
    i32 61, label %csroa.if.else3.i2832.thread3577
    i32 62, label %csroa.if.else3.i2832.thread3578
    i32 63, label %csroa.if.else3.i2832.thread3579
    i32 64, label %csroa.if.else3.i2832.thread3580
    i32 65, label %csroa.if.else3.i2832.thread3581
    i32 66, label %csroa.if.else3.i2832.thread3582
    i32 67, label %csroa.if.else3.i2832.thread3583
    i32 68, label %csroa.if.else3.i2832.thread3584
    i32 69, label %csroa.if.else3.i2832.thread3585
    i32 70, label %csroa.if.else3.i2832.thread3586
    i32 71, label %csroa.if.then352.i2541
    i32 72, label %csroa.if.then357.i2544
    i32 73, label %csroa.if.else3.i2832.thread3587
    i32 74, label %csroa.if.else3.i2832.thread3588
    i32 75, label %csroa.if.else3.i2832.thread3589
    i32 76, label %csroa.if.else3.i2832.thread3590
    i32 77, label %csroa.if.else3.i2832.thread3591
    i32 78, label %csroa.if.else3.i2832.thread3592
    i32 79, label %csroa.if.else3.i2832.thread3593
    i32 80, label %csroa.if.else3.i2832.thread3594
    i32 81, label %csroa.if.else3.i2832.thread3595
    i32 82, label %csroa.if.else3.i2832.thread3596
    i32 83, label %csroa.if.else3.i2832.thread3597
    i32 84, label %csroa.if.else3.i2832.thread3598
    i32 85, label %csroa.if.else3.i2832.thread3599
    i32 86, label %csroa.if.else3.i2832.thread3600
    i32 87, label %csroa.if.else3.i2832.thread3601
    i32 88, label %csroa.if.else3.i2832.thread3602
    i32 89, label %csroa.if.else3.i2832.thread3603
    i32 90, label %csroa.if.else3.i2832.thread3604
    i32 91, label %csroa.if.else3.i2832.thread3605
    i32 92, label %csroa.if.else3.i2832.thread3606
    i32 93, label %csroa.if.else3.i2832.thread3607
    i32 94, label %csroa.if.else3.i2832.thread3608
    i32 95, label %csroa.if.else3.i2832.thread3609
    i32 96, label %csroa.if.else3.i2832.thread3610
    i32 97, label %csroa.if.else3.i2832.thread3611
    i32 98, label %csroa.if.else3.i2832.thread3612
  ]

__non_const_wrapper__.18.exit.thread3334:         ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3537:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then12.i2337:                            ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then17.i2340:                            ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3538:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then27.i2346:                            ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then32.i2349:                            ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then37.i2352:                            ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then42.i2355:                            ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then47.i2358:                            ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then52.i2361:                            ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then57.i2364:                            ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then62.i2367:                            ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3539:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3540:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3541:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3542:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3543:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3544:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then97.i2388:                            ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then102.i2391:                           ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then107.i2394:                           ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3545:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then117.i2400:                           ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then122.i2403:                           ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3546:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3547:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then137.i2412:                           ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then142.i2415:                           ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3548:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3549:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3550:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3551:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3552:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3553:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3554:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3555:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3556:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3557:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3558:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3559:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3561:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3562:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3563:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3564:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3565:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3566:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3567:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3568:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3569:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3570:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3571:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then267.i2490:                           ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then272.i2493:                           ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3572:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3573:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3574:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3575:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3576:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3577:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3578:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3579:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3580:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3581:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3582:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3583:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3584:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3585:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3586:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then352.i2541:                           ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then357.i2544:                           ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3587:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3588:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3589:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3590:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3591:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3592:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3593:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3594:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3595:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3596:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3597:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3598:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3599:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3600:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3601:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3602:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3603:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3604:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3605:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3606:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3607:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3608:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3609:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3610:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3611:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i2832.thread3612:                  ; preds = %for.body6
  br label %__non_const_wrapper__.19.exit.thread

__non_const_wrapper__.19.exit.thread3637:         ; preds = %for.body6
  %cmp113638 = icmp ne i32 %251, 54
  %add133639 = zext i1 %cmp113638 to i32
  %add13.main_result.23640 = add nsw i32 %add133639, %main_result.23614
  br label %for.end17

__non_const_wrapper__.19.exit.thread:             ; preds = %__non_const_wrapper__.18.exit.thread3334, %csroa.if.else3.i2832.thread3537, %csroa.if.else3.i2832.thread3538, %csroa.if.then37.i2352, %csroa.if.then42.i2355, %csroa.if.then57.i2364, %csroa.if.then62.i2367, %csroa.if.else3.i2832.thread3540, %csroa.if.else3.i2832.thread3542, %csroa.if.else3.i2832.thread3544, %csroa.if.else3.i2832.thread3545, %csroa.if.else3.i2832.thread3546, %csroa.if.then137.i2412, %csroa.if.then142.i2415, %csroa.if.else3.i2832.thread3549, %csroa.if.else3.i2832.thread3551, %csroa.if.else3.i2832.thread3553, %csroa.if.else3.i2832.thread3555, %csroa.if.else3.i2832.thread3557, %csroa.if.else3.i2832.thread3559, %csroa.if.else3.i2832.thread3561, %csroa.if.else3.i2832.thread3563, %csroa.if.else3.i2832.thread3565, %csroa.if.else3.i2832.thread3567, %csroa.if.else3.i2832.thread3569, %csroa.if.else3.i2832.thread3571, %csroa.if.else3.i2832.thread3572, %csroa.if.else3.i2832.thread3574, %csroa.if.else3.i2832.thread3576, %csroa.if.else3.i2832.thread3578, %csroa.if.else3.i2832.thread3580, %csroa.if.else3.i2832.thread3582, %csroa.if.else3.i2832.thread3584, %csroa.if.else3.i2832.thread3586, %csroa.if.else3.i2832.thread3587, %csroa.if.else3.i2832.thread3589, %csroa.if.else3.i2832.thread3591, %csroa.if.else3.i2832.thread3593, %csroa.if.else3.i2832.thread3595, %csroa.if.else3.i2832.thread3597, %csroa.if.else3.i2832.thread3599, %csroa.if.else3.i2832.thread3601, %csroa.if.else3.i2832.thread3603, %csroa.if.else3.i2832.thread3605, %csroa.if.else3.i2832.thread3607, %csroa.if.else3.i2832.thread3609, %csroa.if.else3.i2832.thread3611, %csroa.if.else3.i2832.thread3612, %csroa.if.else3.i2832.thread3610, %csroa.if.else3.i2832.thread3608, %csroa.if.else3.i2832.thread3606, %csroa.if.else3.i2832.thread3604, %csroa.if.else3.i2832.thread3602, %csroa.if.else3.i2832.thread3600, %csroa.if.else3.i2832.thread3598, %csroa.if.else3.i2832.thread3596, %csroa.if.else3.i2832.thread3594, %csroa.if.else3.i2832.thread3592, %csroa.if.else3.i2832.thread3590, %csroa.if.else3.i2832.thread3588, %csroa.if.then352.i2541, %csroa.if.then357.i2544, %csroa.if.else3.i2832.thread3585, %csroa.if.else3.i2832.thread3583, %csroa.if.else3.i2832.thread3581, %csroa.if.else3.i2832.thread3579, %csroa.if.else3.i2832.thread3577, %csroa.if.else3.i2832.thread3575, %csroa.if.else3.i2832.thread3573, %csroa.if.then272.i2493, %csroa.if.then267.i2490, %csroa.if.else3.i2832.thread3570, %csroa.if.else3.i2832.thread3568, %csroa.if.else3.i2832.thread3566, %csroa.if.else3.i2832.thread3564, %csroa.if.else3.i2832.thread3562, %csroa.if.else3.i2832.thread3558, %csroa.if.else3.i2832.thread3556, %csroa.if.else3.i2832.thread3554, %csroa.if.else3.i2832.thread3552, %csroa.if.else3.i2832.thread3550, %csroa.if.else3.i2832.thread3548, %csroa.if.else3.i2832.thread3547, %csroa.if.then122.i2403, %csroa.if.then117.i2400, %csroa.if.then102.i2391, %csroa.if.then107.i2394, %csroa.if.then97.i2388, %csroa.if.else3.i2832.thread3543, %csroa.if.else3.i2832.thread3541, %csroa.if.else3.i2832.thread3539, %csroa.if.then52.i2361, %csroa.if.then47.i2358, %csroa.if.then32.i2349, %csroa.if.then27.i2346, %csroa.if.then12.i2337, %csroa.if.then17.i2340, %for.body6
  %.phi.i28253331.ph = phi i32 [ %250, %csroa.if.else3.i2832.thread3612 ], [ %249, %csroa.if.else3.i2832.thread3611 ], [ %248, %csroa.if.else3.i2832.thread3610 ], [ %247, %csroa.if.else3.i2832.thread3609 ], [ %246, %csroa.if.else3.i2832.thread3608 ], [ %245, %csroa.if.else3.i2832.thread3607 ], [ %244, %csroa.if.else3.i2832.thread3606 ], [ %243, %csroa.if.else3.i2832.thread3605 ], [ %242, %csroa.if.else3.i2832.thread3604 ], [ %241, %csroa.if.else3.i2832.thread3603 ], [ %240, %csroa.if.else3.i2832.thread3602 ], [ %239, %csroa.if.else3.i2832.thread3601 ], [ %238, %csroa.if.else3.i2832.thread3600 ], [ %237, %csroa.if.else3.i2832.thread3599 ], [ %236, %csroa.if.else3.i2832.thread3598 ], [ %235, %csroa.if.else3.i2832.thread3597 ], [ %234, %csroa.if.else3.i2832.thread3596 ], [ %233, %csroa.if.else3.i2832.thread3595 ], [ %232, %csroa.if.else3.i2832.thread3594 ], [ %231, %csroa.if.else3.i2832.thread3593 ], [ %230, %csroa.if.else3.i2832.thread3592 ], [ %229, %csroa.if.else3.i2832.thread3591 ], [ %228, %csroa.if.else3.i2832.thread3590 ], [ %227, %csroa.if.else3.i2832.thread3589 ], [ %226, %csroa.if.else3.i2832.thread3588 ], [ %225, %csroa.if.else3.i2832.thread3587 ], [ %224, %csroa.if.then357.i2544 ], [ %223, %csroa.if.then352.i2541 ], [ %222, %csroa.if.else3.i2832.thread3586 ], [ %221, %csroa.if.else3.i2832.thread3585 ], [ %220, %csroa.if.else3.i2832.thread3584 ], [ %219, %csroa.if.else3.i2832.thread3583 ], [ %218, %csroa.if.else3.i2832.thread3582 ], [ %217, %csroa.if.else3.i2832.thread3581 ], [ %216, %csroa.if.else3.i2832.thread3580 ], [ %215, %csroa.if.else3.i2832.thread3579 ], [ %214, %csroa.if.else3.i2832.thread3578 ], [ %213, %csroa.if.else3.i2832.thread3577 ], [ %212, %csroa.if.else3.i2832.thread3576 ], [ %211, %csroa.if.else3.i2832.thread3575 ], [ %210, %csroa.if.else3.i2832.thread3574 ], [ %209, %csroa.if.else3.i2832.thread3573 ], [ %208, %csroa.if.else3.i2832.thread3572 ], [ %207, %csroa.if.then272.i2493 ], [ %206, %csroa.if.then267.i2490 ], [ %205, %csroa.if.else3.i2832.thread3571 ], [ %204, %csroa.if.else3.i2832.thread3570 ], [ %203, %csroa.if.else3.i2832.thread3569 ], [ %202, %csroa.if.else3.i2832.thread3568 ], [ %201, %csroa.if.else3.i2832.thread3567 ], [ %200, %csroa.if.else3.i2832.thread3566 ], [ %199, %csroa.if.else3.i2832.thread3565 ], [ %198, %csroa.if.else3.i2832.thread3564 ], [ %197, %csroa.if.else3.i2832.thread3563 ], [ %196, %csroa.if.else3.i2832.thread3562 ], [ %195, %csroa.if.else3.i2832.thread3561 ], [ %193, %csroa.if.else3.i2832.thread3559 ], [ %192, %csroa.if.else3.i2832.thread3558 ], [ %191, %csroa.if.else3.i2832.thread3557 ], [ %190, %csroa.if.else3.i2832.thread3556 ], [ %189, %csroa.if.else3.i2832.thread3555 ], [ %188, %csroa.if.else3.i2832.thread3554 ], [ %187, %csroa.if.else3.i2832.thread3553 ], [ %186, %csroa.if.else3.i2832.thread3552 ], [ %185, %csroa.if.else3.i2832.thread3551 ], [ %184, %csroa.if.else3.i2832.thread3550 ], [ %183, %csroa.if.else3.i2832.thread3549 ], [ %182, %csroa.if.else3.i2832.thread3548 ], [ %181, %csroa.if.then142.i2415 ], [ %180, %csroa.if.then137.i2412 ], [ %179, %csroa.if.else3.i2832.thread3547 ], [ %178, %csroa.if.else3.i2832.thread3546 ], [ %177, %csroa.if.then122.i2403 ], [ %176, %csroa.if.then117.i2400 ], [ %175, %csroa.if.else3.i2832.thread3545 ], [ %174, %csroa.if.then107.i2394 ], [ %173, %csroa.if.then102.i2391 ], [ %172, %csroa.if.then97.i2388 ], [ %171, %csroa.if.else3.i2832.thread3544 ], [ %170, %csroa.if.else3.i2832.thread3543 ], [ %169, %csroa.if.else3.i2832.thread3542 ], [ %168, %csroa.if.else3.i2832.thread3541 ], [ %167, %csroa.if.else3.i2832.thread3540 ], [ %166, %csroa.if.else3.i2832.thread3539 ], [ %165, %csroa.if.then62.i2367 ], [ %164, %csroa.if.then57.i2364 ], [ %163, %csroa.if.then52.i2361 ], [ %162, %csroa.if.then47.i2358 ], [ %161, %csroa.if.then42.i2355 ], [ %160, %csroa.if.then37.i2352 ], [ %159, %csroa.if.then32.i2349 ], [ %158, %csroa.if.then27.i2346 ], [ %157, %csroa.if.else3.i2832.thread3538 ], [ %156, %csroa.if.then17.i2340 ], [ %155, %csroa.if.then12.i2337 ], [ %154, %csroa.if.else3.i2832.thread3537 ], [ %153, %__non_const_wrapper__.18.exit.thread3334 ], [ %152, %for.body6 ]
  %.phi.i3324.ph = phi i32 [ 58, %csroa.if.else3.i2832.thread3612 ], [ 57, %csroa.if.else3.i2832.thread3611 ], [ 59, %csroa.if.else3.i2832.thread3610 ], [ 60, %csroa.if.else3.i2832.thread3609 ], [ 65, %csroa.if.else3.i2832.thread3608 ], [ 62, %csroa.if.else3.i2832.thread3607 ], [ 59, %csroa.if.else3.i2832.thread3606 ], [ 55, %csroa.if.else3.i2832.thread3605 ], [ 58, %csroa.if.else3.i2832.thread3604 ], [ 59, %csroa.if.else3.i2832.thread3603 ], [ 62, %csroa.if.else3.i2832.thread3602 ], [ 60, %csroa.if.else3.i2832.thread3601 ], [ 62, %csroa.if.else3.i2832.thread3600 ], [ 61, %csroa.if.else3.i2832.thread3599 ], [ 65, %csroa.if.else3.i2832.thread3598 ], [ 61, %csroa.if.else3.i2832.thread3597 ], [ 59, %csroa.if.else3.i2832.thread3596 ], [ 55, %csroa.if.else3.i2832.thread3595 ], [ 59, %csroa.if.else3.i2832.thread3594 ], [ 60, %csroa.if.else3.i2832.thread3593 ], [ 63, %csroa.if.else3.i2832.thread3592 ], [ 59, %csroa.if.else3.i2832.thread3591 ], [ 57, %csroa.if.else3.i2832.thread3590 ], [ 54, %csroa.if.else3.i2832.thread3589 ], [ 59, %csroa.if.else3.i2832.thread3588 ], [ 58, %csroa.if.else3.i2832.thread3587 ], [ 59, %csroa.if.then357.i2544 ], [ 59, %csroa.if.then352.i2541 ], [ 65, %csroa.if.else3.i2832.thread3586 ], [ 62, %csroa.if.else3.i2832.thread3585 ], [ 59, %csroa.if.else3.i2832.thread3584 ], [ 55, %csroa.if.else3.i2832.thread3583 ], [ 59, %csroa.if.else3.i2832.thread3582 ], [ 62, %csroa.if.else3.i2832.thread3581 ], [ 66, %csroa.if.else3.i2832.thread3580 ], [ %i.13613, %csroa.if.else3.i2832.thread3579 ], [ %i.13613, %csroa.if.else3.i2832.thread3578 ], [ 60, %csroa.if.else3.i2832.thread3577 ], [ 65, %csroa.if.else3.i2832.thread3576 ], [ 62, %csroa.if.else3.i2832.thread3575 ], [ 61, %csroa.if.else3.i2832.thread3574 ], [ 58, %csroa.if.else3.i2832.thread3573 ], [ 64, %csroa.if.else3.i2832.thread3572 ], [ 63, %csroa.if.then272.i2493 ], [ 63, %csroa.if.then267.i2490 ], [ 58, %csroa.if.else3.i2832.thread3571 ], [ 59, %csroa.if.else3.i2832.thread3570 ], [ 56, %csroa.if.else3.i2832.thread3569 ], [ 57, %csroa.if.else3.i2832.thread3568 ], [ 54, %csroa.if.else3.i2832.thread3567 ], [ 56, %csroa.if.else3.i2832.thread3566 ], [ 53, %csroa.if.else3.i2832.thread3565 ], [ 55, %csroa.if.else3.i2832.thread3564 ], [ 52, %csroa.if.else3.i2832.thread3563 ], [ 55, %csroa.if.else3.i2832.thread3562 ], [ 52, %csroa.if.else3.i2832.thread3561 ], [ 51, %csroa.if.else3.i2832.thread3559 ], [ 53, %csroa.if.else3.i2832.thread3558 ], [ 50, %csroa.if.else3.i2832.thread3557 ], [ 51, %csroa.if.else3.i2832.thread3556 ], [ 47, %csroa.if.else3.i2832.thread3555 ], [ 46, %csroa.if.else3.i2832.thread3554 ], [ 39, %csroa.if.else3.i2832.thread3553 ], [ 38, %csroa.if.else3.i2832.thread3552 ], [ %i.13613, %csroa.if.else3.i2832.thread3551 ], [ %i.13613, %csroa.if.else3.i2832.thread3550 ], [ 24, %csroa.if.else3.i2832.thread3549 ], [ 22, %csroa.if.else3.i2832.thread3548 ], [ 20, %csroa.if.then142.i2415 ], [ 20, %csroa.if.then137.i2412 ], [ 11, %csroa.if.else3.i2832.thread3547 ], [ 3, %csroa.if.else3.i2832.thread3546 ], [ 2, %csroa.if.then122.i2403 ], [ 2, %csroa.if.then117.i2400 ], [ -5, %csroa.if.else3.i2832.thread3545 ], [ 1, %csroa.if.then107.i2394 ], [ 1, %csroa.if.then102.i2391 ], [ 1, %csroa.if.then97.i2388 ], [ -4, %csroa.if.else3.i2832.thread3544 ], [ 0, %csroa.if.else3.i2832.thread3543 ], [ -2, %csroa.if.else3.i2832.thread3542 ], [ -1, %csroa.if.else3.i2832.thread3541 ], [ -2, %csroa.if.else3.i2832.thread3540 ], [ 0, %csroa.if.else3.i2832.thread3539 ], [ 1, %csroa.if.then62.i2367 ], [ 1, %csroa.if.then57.i2364 ], [ 0, %csroa.if.then52.i2361 ], [ 0, %csroa.if.then47.i2358 ], [ -1, %csroa.if.then42.i2355 ], [ -1, %csroa.if.then37.i2352 ], [ 0, %csroa.if.then32.i2349 ], [ 0, %csroa.if.then27.i2346 ], [ -1, %csroa.if.else3.i2832.thread3538 ], [ 0, %csroa.if.then17.i2340 ], [ 0, %csroa.if.then12.i2337 ], [ -1, %csroa.if.else3.i2832.thread3537 ], [ -1, %__non_const_wrapper__.18.exit.thread3334 ], [ 0, %for.body6 ]
  %cmp113632 = icmp ne i32 %.phi.i28253331.ph, %.phi.i3324.ph
  %add133633 = zext i1 %cmp113632 to i32
  %add13.main_result.23634 = add nsw i32 %add133633, %main_result.23614
  %inc163635 = add nuw nsw i32 %i.13613, 1
  br label %for.body6.backedge

__non_const_wrapper__.19.exit:                    ; preds = %for.body6
  %add13.main_result.2 = add nsw i32 %add13, %main_result.23614
  %inc16 = add nuw nsw i32 %i.13613, 1
  %exitcond = icmp eq i32 %inc16, 100
  br i1 %exitcond, label %for.end17.loopexit, label %for.body6.backedge

for.body6.backedge:                               ; preds = %__non_const_wrapper__.19.exit, %__non_const_wrapper__.19.exit.thread
  %main_result.23614.be = phi i32 [ %add13.main_result.2, %__non_const_wrapper__.19.exit ], [ %add13.main_result.23634, %__non_const_wrapper__.19.exit.thread ]
  %i.13613.be = phi i32 [ %inc16, %__non_const_wrapper__.19.exit ], [ %inc163635, %__non_const_wrapper__.19.exit.thread ]
  br label %for.body6

for.end17.loopexit:                               ; preds = %__non_const_wrapper__.19.exit
  br label %for.end17

for.end17:                                        ; preds = %for.end17.loopexit, %__non_const_wrapper__.19.exit.thread3637
  %add13.main_result.23643 = phi i32 [ %add13.main_result.23640, %__non_const_wrapper__.19.exit.thread3637 ], [ %add13.main_result.2, %for.end17.loopexit ]
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %add13.main_result.23643)
  ret i32 %add13.main_result.23643
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: norecurse nounwind readnone
define i32 @abs.v0.C.c(i32 %n) local_unnamed_addr #2 {
entry:
  %cmp = icmp sgt i32 %n, -1
  %sub = sub nsw i32 0, %n
  %m.0 = select i1 %cmp, i32 %n, i32 %sub
  ret i32 %m.0
}

; Function Attrs: noinline norecurse nounwind readnone
define i32 @filtez.v0.C.c.c(i32 %bpl.0, i32 %bpl.1, i32 %bpl.2, i32 %bpl.3, i32 %bpl.4, i32 %bpl.5, i32 %dlt.0, i32 %dlt.1, i32 %dlt.2, i32 %dlt.3, i32 %dlt.4, i32 %dlt.5) local_unnamed_addr #3 {
entry:
  %conv = sext i32 %bpl.0 to i64
  %conv2 = sext i32 %dlt.0 to i64
  %mul = mul nsw i64 %conv2, %conv
  br label %for.body

for.body:                                         ; preds = %__non_const_wrapper__.15.exit, %entry
  %bpl.addr.0.phi5 = phi i32 [ 0, %entry ], [ %incdec.ptr4.add, %__non_const_wrapper__.15.exit ]
  %zl.02 = phi i64 [ %mul, %entry ], [ %add, %__non_const_wrapper__.15.exit ]
  %incdec.ptr4.add = add nuw nsw i32 %bpl.addr.0.phi5, 1
  switch i32 %bpl.addr.0.phi5, label %__non_const_wrapper__.15.exit [
    i32 4, label %csroa.if.then22.i17
    i32 0, label %csroa.if.then2.i5
    i32 1, label %csroa.if.then7.i8
    i32 2, label %csroa.if.then12.i11
    i32 3, label %csroa.if.then17.i14
  ]

csroa.if.then2.i5:                                ; preds = %for.body
  br label %__non_const_wrapper__.15.exit

csroa.if.then7.i8:                                ; preds = %for.body
  br label %__non_const_wrapper__.15.exit

csroa.if.then12.i11:                              ; preds = %for.body
  br label %__non_const_wrapper__.15.exit

csroa.if.then17.i14:                              ; preds = %for.body
  br label %__non_const_wrapper__.15.exit

csroa.if.then22.i17:                              ; preds = %for.body
  br label %__non_const_wrapper__.15.exit

__non_const_wrapper__.15.exit:                    ; preds = %for.body, %csroa.if.then2.i5, %csroa.if.then12.i11, %csroa.if.then22.i17, %csroa.if.then17.i14, %csroa.if.then7.i8
  %conv58.in = phi i32 [ %bpl.1, %csroa.if.then2.i5 ], [ %bpl.2, %csroa.if.then7.i8 ], [ %bpl.3, %csroa.if.then12.i11 ], [ %bpl.4, %csroa.if.then17.i14 ], [ %bpl.5, %csroa.if.then22.i17 ], [ %bpl.0, %for.body ]
  %.phi.i29 = phi i32 [ %dlt.1, %csroa.if.then2.i5 ], [ %dlt.2, %csroa.if.then7.i8 ], [ %dlt.3, %csroa.if.then12.i11 ], [ %dlt.4, %csroa.if.then17.i14 ], [ %dlt.5, %csroa.if.then22.i17 ], [ %dlt.0, %for.body ]
  %conv58 = sext i32 %conv58.in to i64
  %conv7 = sext i32 %.phi.i29 to i64
  %mul8 = mul nsw i64 %conv7, %conv58
  %add = add nsw i64 %mul8, %zl.02
  %exitcond = icmp eq i32 %incdec.ptr4.add, 5
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %__non_const_wrapper__.15.exit
  %shr1 = lshr i64 %add, 14
  %conv9 = trunc i64 %shr1 to i32
  ret i32 %conv9
}

; Function Attrs: noinline norecurse nounwind readnone
define i32 @filtep.v0.C.c.c(i32 %rlt1, i32 %al1, i32 %rlt2, i32 %al2) local_unnamed_addr #3 {
entry:
  %mul = shl nsw i32 %rlt1, 1
  %conv = sext i32 %mul to i64
  %conv1 = sext i32 %al1 to i64
  %mul2 = mul nsw i64 %conv1, %conv
  %mul3 = shl nsw i32 %rlt2, 1
  %conv4 = sext i32 %mul3 to i64
  %conv5 = sext i32 %al2 to i64
  %mul6 = mul nsw i64 %conv5, %conv4
  %add = add nsw i64 %mul6, %mul2
  %shr1 = lshr i64 %add, 15
  %conv7 = trunc i64 %shr1 to i32
  ret i32 %conv7
}

; Function Attrs: noinline norecurse nounwind readnone
define i32 @uppol1.v0.C.c.c(i32 %al1, i32 %apl2, i32 %plt, i32 %plt1) local_unnamed_addr #3 {
entry:
  %conv = sext i32 %al1 to i64
  %mul = mul nsw i64 %conv, 255
  %shr1 = lshr i64 %mul, 8
  %conv1 = sext i32 %plt to i64
  %conv2 = sext i32 %plt1 to i64
  %mul3 = mul nsw i64 %conv2, %conv1
  %cmp = icmp sgt i64 %mul3, -1
  %conv5 = trunc i64 %shr1 to i32
  %.sink = select i1 %cmp, i32 192, i32 -192
  %sub = add nsw i32 %.sink, %conv5
  %sub7 = sub nsw i32 15360, %apl2
  %cmp8 = icmp sgt i32 %sub, %sub7
  %sub7.sub = select i1 %cmp8, i32 %sub7, i32 %sub
  %sub12 = sub nsw i32 0, %sub7
  %cmp13 = icmp slt i32 %sub7.sub, %sub12
  %apl1.2 = select i1 %cmp13, i32 %sub12, i32 %sub7.sub
  ret i32 %apl1.2
}

; Function Attrs: noinline norecurse nounwind
define i32 @encode.v0.C.c.c(i32 %xin1, i32 %xin2) local_unnamed_addr #4 {
entry:
  %0 = load i32, i32* @tqmf.0, align 16
  %conv = sext i32 %0 to i64
  %mul = mul nsw i64 %conv, 12
  %1 = load i32, i32* @tqmf.1, align 16
  %conv4 = sext i32 %1 to i64
  %mul7 = mul nsw i64 %conv4, -44
  %2 = load i32, i32* @tqmf.23, align 16
  %3 = load i32, i32* @tqmf.17, align 16
  %4 = load i32, i32* @tqmf.3, align 16
  %5 = load i32, i32* @tqmf.21, align 16
  %6 = load i32, i32* @tqmf.5, align 16
  %7 = load i32, i32* @tqmf.13, align 16
  %8 = load i32, i32* @tqmf.7, align 16
  %9 = load i32, i32* @tqmf.19, align 16
  %10 = load i32, i32* @tqmf.9, align 16
  %11 = load i32, i32* @tqmf.15, align 16
  %12 = load i32, i32* @tqmf.11, align 16
  %13 = load i32, i32* @tqmf.12, align 16
  %14 = load i32, i32* @tqmf.2, align 16
  %15 = load i32, i32* @tqmf.22, align 16
  %16 = load i32, i32* @tqmf.4, align 16
  %17 = load i32, i32* @tqmf.16, align 16
  %18 = load i32, i32* @tqmf.6, align 16
  %19 = load i32, i32* @tqmf.20, align 16
  %20 = load i32, i32* @tqmf.8, align 16
  %21 = load i32, i32* @tqmf.14, align 16
  %22 = load i32, i32* @tqmf.10, align 16
  %23 = load i32, i32* @tqmf.18, align 16
  %conv10 = sext i32 %14 to i64
  %mul13 = mul nsw i64 %conv10, 12
  %mul1350 = mul nsw i64 %conv10, 12
  %mul1357 = mul nsw i64 %conv10, -44
  %conv1046 = sext i32 %13 to i64
  %conv1048 = sext i32 %23 to i64
  %conv1023 = sext i32 %15 to i64
  %conv1018 = sext i32 %16 to i64
  %conv1044 = sext i32 %17 to i64
  %conv1034 = sext i32 %18 to i64
  %conv1040 = sext i32 %19 to i64
  %conv1038 = sext i32 %20 to i64
  %conv1036 = sext i32 %21 to i64
  %conv1042 = sext i32 %22 to i64
  %mul1389 = mul nsw i64 %conv1042, 3804
  br label %csroa.if.else.i

csroa.if.else.i:                                  ; preds = %entry, %__non_const_wrapper__.23.exit
  %xb.015 = phi i64 [ %mul7, %entry ], [ %add19, %__non_const_wrapper__.23.exit ]
  %xa.014 = phi i64 [ %mul, %entry ], [ %add53164, %__non_const_wrapper__.23.exit ]
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %__non_const_wrapper__.23.exit ]
  %h_ptr.0.phi12 = phi i32 [ 0, %entry ], [ %incdec.ptr16.add54152, %__non_const_wrapper__.23.exit ]
  switch i32 %h_ptr.0.phi12, label %__non_const_wrapper__.21.exit [
    i32 10, label %__non_const_wrapper__.21.exit.thread95
    i32 16, label %__non_const_wrapper__.21.exit.thread119
    i32 20, label %__non_const_wrapper__.21.exit.thread135
    i32 2, label %__non_const_wrapper__.21.exit.thread63
    i32 14, label %__non_const_wrapper__.21.exit.thread111
    i32 4, label %__non_const_wrapper__.21.exit.thread71
    i32 18, label %__non_const_wrapper__.21.exit.thread127
    i32 6, label %__non_const_wrapper__.21.exit.thread79
    i32 12, label %__non_const_wrapper__.21.exit.thread103
    i32 8, label %__non_const_wrapper__.21.exit.thread87
    i32 -2, label %__non_const_wrapper__.22.exit.thread181
    i32 0, label %__non_const_wrapper__.23.exit
  ]

__non_const_wrapper__.22.exit.thread181:          ; preds = %csroa.if.else.i
  br label %__non_const_wrapper__.23.exit

__non_const_wrapper__.21.exit.thread63:           ; preds = %csroa.if.else.i
  %mul1365 = mul nsw i64 %conv1018, 48
  br label %__non_const_wrapper__.23.exit

__non_const_wrapper__.21.exit.thread71:           ; preds = %csroa.if.else.i
  %mul1373 = shl nsw i64 %conv1034, 7
  br label %__non_const_wrapper__.23.exit

__non_const_wrapper__.21.exit.thread79:           ; preds = %csroa.if.else.i
  %mul1381 = mul nsw i64 %conv1038, -840
  br label %__non_const_wrapper__.23.exit

__non_const_wrapper__.21.exit.thread87:           ; preds = %csroa.if.else.i
  br label %__non_const_wrapper__.23.exit

__non_const_wrapper__.21.exit.thread95:           ; preds = %csroa.if.else.i
  %mul1397 = mul nsw i64 %conv1046, 15504
  br label %__non_const_wrapper__.23.exit

__non_const_wrapper__.21.exit.thread103:          ; preds = %csroa.if.else.i
  %mul13105 = mul nsw i64 %conv1036, -3220
  br label %__non_const_wrapper__.23.exit

__non_const_wrapper__.21.exit.thread111:          ; preds = %csroa.if.else.i
  %mul13113 = mul nsw i64 %conv1044, 1448
  br label %__non_const_wrapper__.23.exit

__non_const_wrapper__.21.exit.thread119:          ; preds = %csroa.if.else.i
  %mul13121 = mul nsw i64 %conv1048, -624
  br label %__non_const_wrapper__.23.exit

__non_const_wrapper__.21.exit.thread127:          ; preds = %csroa.if.else.i
  %mul13129 = mul nsw i64 %conv1040, 212
  br label %__non_const_wrapper__.23.exit

__non_const_wrapper__.21.exit.thread135:          ; preds = %csroa.if.else.i
  %mul13137 = mul nsw i64 %conv1023, -44
  br label %__non_const_wrapper__.23.exit

__non_const_wrapper__.21.exit:                    ; preds = %csroa.if.else.i
  %incdec.ptr16.add = add nuw nsw i32 %h_ptr.0.phi12, 2
  br label %__non_const_wrapper__.23.exit

__non_const_wrapper__.23.exit:                    ; preds = %csroa.if.else.i, %__non_const_wrapper__.21.exit.thread71, %__non_const_wrapper__.21.exit.thread87, %__non_const_wrapper__.21.exit.thread95, %__non_const_wrapper__.21.exit.thread111, %__non_const_wrapper__.21.exit.thread127, %__non_const_wrapper__.21.exit, %__non_const_wrapper__.21.exit.thread135, %__non_const_wrapper__.21.exit.thread119, %__non_const_wrapper__.21.exit.thread103, %__non_const_wrapper__.21.exit.thread79, %__non_const_wrapper__.21.exit.thread63, %__non_const_wrapper__.22.exit.thread181
  %conv15176.in = phi i32 [ %1, %__non_const_wrapper__.22.exit.thread181 ], [ %6, %__non_const_wrapper__.21.exit.thread63 ], [ %8, %__non_const_wrapper__.21.exit.thread71 ], [ %10, %__non_const_wrapper__.21.exit.thread79 ], [ %12, %__non_const_wrapper__.21.exit.thread87 ], [ %7, %__non_const_wrapper__.21.exit.thread95 ], [ %11, %__non_const_wrapper__.21.exit.thread103 ], [ %3, %__non_const_wrapper__.21.exit.thread111 ], [ %9, %__non_const_wrapper__.21.exit.thread119 ], [ %5, %__non_const_wrapper__.21.exit.thread127 ], [ %2, %__non_const_wrapper__.21.exit.thread135 ], [ %1, %__non_const_wrapper__.21.exit ], [ %4, %csroa.if.else.i ]
  %mul1350.pn = phi i64 [ %mul1350, %__non_const_wrapper__.22.exit.thread181 ], [ %mul1365, %__non_const_wrapper__.21.exit.thread63 ], [ %mul1373, %__non_const_wrapper__.21.exit.thread71 ], [ %mul1381, %__non_const_wrapper__.21.exit.thread79 ], [ %mul1389, %__non_const_wrapper__.21.exit.thread87 ], [ %mul1397, %__non_const_wrapper__.21.exit.thread95 ], [ %mul13105, %__non_const_wrapper__.21.exit.thread103 ], [ %mul13113, %__non_const_wrapper__.21.exit.thread111 ], [ %mul13121, %__non_const_wrapper__.21.exit.thread119 ], [ %mul13129, %__non_const_wrapper__.21.exit.thread127 ], [ %mul13137, %__non_const_wrapper__.21.exit.thread135 ], [ %mul13, %__non_const_wrapper__.21.exit ], [ %mul1357, %csroa.if.else.i ]
  %incdec.ptr16.add54152 = phi i32 [ 0, %__non_const_wrapper__.22.exit.thread181 ], [ 4, %__non_const_wrapper__.21.exit.thread63 ], [ 6, %__non_const_wrapper__.21.exit.thread71 ], [ 8, %__non_const_wrapper__.21.exit.thread79 ], [ 10, %__non_const_wrapper__.21.exit.thread87 ], [ 12, %__non_const_wrapper__.21.exit.thread95 ], [ 14, %__non_const_wrapper__.21.exit.thread103 ], [ 16, %__non_const_wrapper__.21.exit.thread111 ], [ 18, %__non_const_wrapper__.21.exit.thread119 ], [ 20, %__non_const_wrapper__.21.exit.thread127 ], [ 22, %__non_const_wrapper__.21.exit.thread135 ], [ %incdec.ptr16.add, %__non_const_wrapper__.21.exit ], [ 2, %csroa.if.else.i ]
  %.phi5.i355 = phi i64 [ -44, %__non_const_wrapper__.22.exit.thread181 ], [ -624, %__non_const_wrapper__.21.exit.thread63 ], [ 1448, %__non_const_wrapper__.21.exit.thread71 ], [ -3220, %__non_const_wrapper__.21.exit.thread79 ], [ 15504, %__non_const_wrapper__.21.exit.thread87 ], [ 3804, %__non_const_wrapper__.21.exit.thread95 ], [ -840, %__non_const_wrapper__.21.exit.thread103 ], [ 128, %__non_const_wrapper__.21.exit.thread111 ], [ 48, %__non_const_wrapper__.21.exit.thread119 ], [ -44, %__non_const_wrapper__.21.exit.thread127 ], [ 12, %__non_const_wrapper__.21.exit.thread135 ], [ 12, %__non_const_wrapper__.21.exit ], [ 212, %csroa.if.else.i ]
  %add53164 = add nsw i64 %mul1350.pn, %xa.014
  %conv15176 = sext i32 %conv15176.in to i64
  %mul18 = mul nsw i64 %.phi5.i355, %conv15176
  %add19 = add nsw i64 %mul18, %xb.015
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond17 = icmp eq i32 %inc, 10
  br i1 %exitcond17, label %__non_const_wrapper__.27.exit, label %csroa.if.else.i

__non_const_wrapper__.27.exit:                    ; preds = %__non_const_wrapper__.23.exit
  %conv21 = sext i32 %15 to i64
  %mul24 = mul nsw i64 %conv21, -44
  %add25 = add nsw i64 %mul24, %add53164
  %conv26 = sext i32 %2 to i64
  %mul29 = mul nsw i64 %conv26, 12
  br label %for.body34

for.body34:                                       ; preds = %for.inc37, %__non_const_wrapper__.27.exit
  %tqmf_ptr.1.firstgepi.gepi.add10 = phi i32 [ 21, %__non_const_wrapper__.27.exit ], [ %tqmf_ptr.1.firstgepi.gepi.add, %for.inc37 ]
  %i.19 = phi i32 [ 0, %__non_const_wrapper__.27.exit ], [ %inc38, %for.inc37 ]
  %tqmf_ptr.1.phi8 = phi i32 [ 0, %__non_const_wrapper__.27.exit ], [ %incdec.ptr36.add, %for.inc37 ]
  %incdec.ptr36.add = add nsw i32 %tqmf_ptr.1.phi8, -1
  switch i32 %tqmf_ptr.1.phi8, label %__non_const_wrapper__.28.exit [
    i32 -21, label %csroa.if.then.i835
    i32 -20, label %csroa.if.then2.i838
    i32 -19, label %csroa.if.then7.i841
    i32 -18, label %csroa.if.then12.i844
    i32 -17, label %csroa.if.then17.i847
    i32 -16, label %csroa.if.then22.i850
    i32 -15, label %csroa.if.then27.i853
    i32 -14, label %csroa.if.then32.i856
    i32 -13, label %csroa.if.then37.i859
    i32 -12, label %csroa.if.then42.i862
    i32 -11, label %csroa.if.then47.i865
    i32 -10, label %csroa.if.then52.i868
    i32 -9, label %csroa.if.then57.i871
    i32 -8, label %csroa.if.then62.i874
    i32 -7, label %csroa.if.then67.i877
    i32 -6, label %csroa.if.then72.i880
    i32 -5, label %csroa.if.then77.i883
    i32 -4, label %csroa.if.then82.i886
    i32 -3, label %csroa.if.then87.i889
    i32 -2, label %csroa.if.then92.i892
    i32 -1, label %csroa.if.then97.i895
    i32 0, label %csroa.if.then102.i898
    i32 1, label %csroa.if.then107.i901
    i32 2, label %csroa.if.then112.i904
  ]

csroa.if.then.i835:                               ; preds = %for.body34
  %24 = load i32, i32* @tqmf.0, align 16
  br label %__non_const_wrapper__.28.exit

csroa.if.then2.i838:                              ; preds = %for.body34
  %25 = load i32, i32* @tqmf.1, align 16
  br label %__non_const_wrapper__.28.exit

csroa.if.then7.i841:                              ; preds = %for.body34
  %26 = load i32, i32* @tqmf.2, align 16
  br label %__non_const_wrapper__.28.exit

csroa.if.then12.i844:                             ; preds = %for.body34
  %27 = load i32, i32* @tqmf.3, align 16
  br label %__non_const_wrapper__.28.exit

csroa.if.then17.i847:                             ; preds = %for.body34
  %28 = load i32, i32* @tqmf.4, align 16
  br label %__non_const_wrapper__.28.exit

csroa.if.then22.i850:                             ; preds = %for.body34
  %29 = load i32, i32* @tqmf.5, align 16
  br label %__non_const_wrapper__.28.exit

csroa.if.then27.i853:                             ; preds = %for.body34
  %30 = load i32, i32* @tqmf.6, align 16
  br label %__non_const_wrapper__.28.exit

csroa.if.then32.i856:                             ; preds = %for.body34
  %31 = load i32, i32* @tqmf.7, align 16
  br label %__non_const_wrapper__.28.exit

csroa.if.then37.i859:                             ; preds = %for.body34
  %32 = load i32, i32* @tqmf.8, align 16
  br label %__non_const_wrapper__.28.exit

csroa.if.then42.i862:                             ; preds = %for.body34
  %33 = load i32, i32* @tqmf.9, align 16
  br label %__non_const_wrapper__.28.exit

csroa.if.then47.i865:                             ; preds = %for.body34
  %34 = load i32, i32* @tqmf.10, align 16
  br label %__non_const_wrapper__.28.exit

csroa.if.then52.i868:                             ; preds = %for.body34
  %35 = load i32, i32* @tqmf.11, align 16
  br label %__non_const_wrapper__.28.exit

csroa.if.then57.i871:                             ; preds = %for.body34
  %36 = load i32, i32* @tqmf.12, align 16
  br label %__non_const_wrapper__.28.exit

csroa.if.then62.i874:                             ; preds = %for.body34
  %37 = load i32, i32* @tqmf.13, align 16
  br label %__non_const_wrapper__.28.exit

csroa.if.then67.i877:                             ; preds = %for.body34
  %38 = load i32, i32* @tqmf.14, align 16
  br label %__non_const_wrapper__.28.exit

csroa.if.then72.i880:                             ; preds = %for.body34
  %39 = load i32, i32* @tqmf.15, align 16
  br label %__non_const_wrapper__.28.exit

csroa.if.then77.i883:                             ; preds = %for.body34
  %40 = load i32, i32* @tqmf.16, align 16
  br label %__non_const_wrapper__.28.exit

csroa.if.then82.i886:                             ; preds = %for.body34
  %41 = load i32, i32* @tqmf.17, align 16
  br label %__non_const_wrapper__.28.exit

csroa.if.then87.i889:                             ; preds = %for.body34
  %42 = load i32, i32* @tqmf.18, align 16
  br label %__non_const_wrapper__.28.exit

csroa.if.then92.i892:                             ; preds = %for.body34
  %43 = load i32, i32* @tqmf.19, align 16
  br label %__non_const_wrapper__.28.exit

csroa.if.then97.i895:                             ; preds = %for.body34
  %44 = load i32, i32* @tqmf.20, align 16
  br label %__non_const_wrapper__.28.exit

csroa.if.then102.i898:                            ; preds = %for.body34
  %45 = load i32, i32* @tqmf.21, align 16
  br label %__non_const_wrapper__.28.exit

csroa.if.then107.i901:                            ; preds = %for.body34
  %46 = load i32, i32* @tqmf.22, align 16
  br label %__non_const_wrapper__.28.exit

csroa.if.then112.i904:                            ; preds = %for.body34
  %47 = load i32, i32* @tqmf.23, align 16
  br label %__non_const_wrapper__.28.exit

__non_const_wrapper__.28.exit:                    ; preds = %csroa.if.then2.i838, %csroa.if.then12.i844, %csroa.if.then22.i850, %csroa.if.then32.i856, %csroa.if.then42.i862, %csroa.if.then52.i868, %csroa.if.then62.i874, %csroa.if.then72.i880, %csroa.if.then82.i886, %csroa.if.then92.i892, %csroa.if.then102.i898, %csroa.if.then112.i904, %for.body34, %csroa.if.then107.i901, %csroa.if.then97.i895, %csroa.if.then87.i889, %csroa.if.then77.i883, %csroa.if.then67.i877, %csroa.if.then57.i871, %csroa.if.then47.i865, %csroa.if.then37.i859, %csroa.if.then27.i853, %csroa.if.then17.i847, %csroa.if.then7.i841, %csroa.if.then.i835
  %.phi.i952 = phi i32 [ %24, %csroa.if.then.i835 ], [ %25, %csroa.if.then2.i838 ], [ %26, %csroa.if.then7.i841 ], [ %27, %csroa.if.then12.i844 ], [ %28, %csroa.if.then17.i847 ], [ %29, %csroa.if.then22.i850 ], [ %30, %csroa.if.then27.i853 ], [ %31, %csroa.if.then32.i856 ], [ %32, %csroa.if.then37.i859 ], [ %33, %csroa.if.then42.i862 ], [ %34, %csroa.if.then47.i865 ], [ %35, %csroa.if.then52.i868 ], [ %36, %csroa.if.then57.i871 ], [ %37, %csroa.if.then62.i874 ], [ %38, %csroa.if.then67.i877 ], [ %39, %csroa.if.then72.i880 ], [ %40, %csroa.if.then77.i883 ], [ %41, %csroa.if.then82.i886 ], [ %42, %csroa.if.then87.i889 ], [ %43, %csroa.if.then92.i892 ], [ %44, %csroa.if.then97.i895 ], [ %45, %csroa.if.then102.i898 ], [ %46, %csroa.if.then107.i901 ], [ %47, %csroa.if.then112.i904 ], [ undef, %for.body34 ]
  switch i32 %tqmf_ptr.1.firstgepi.gepi.add10, label %csroa.if.else15.i [
    i32 -2, label %csroa.if.then.i954
    i32 -1, label %for.inc37.sink.split
    i32 0, label %csroa.if.then6.i
    i32 1, label %csroa.if.then10.i
    i32 2, label %csroa.if.then14.i
  ]

csroa.if.then.i954:                               ; preds = %__non_const_wrapper__.28.exit
  br label %for.inc37.sink.split

csroa.if.then6.i:                                 ; preds = %__non_const_wrapper__.28.exit
  br label %for.inc37.sink.split

csroa.if.then10.i:                                ; preds = %__non_const_wrapper__.28.exit
  br label %for.inc37.sink.split

csroa.if.then14.i:                                ; preds = %__non_const_wrapper__.28.exit
  br label %for.inc37.sink.split

csroa.if.else15.i:                                ; preds = %__non_const_wrapper__.28.exit
  switch i32 %tqmf_ptr.1.firstgepi.gepi.add10, label %for.inc37 [
    i32 3, label %for.inc37.sink.split
    i32 4, label %csroa.if.then22.i960
    i32 5, label %csroa.if.then26.i
    i32 6, label %csroa.if.then30.i
    i32 7, label %csroa.if.then34.i
    i32 8, label %csroa.if.then38.i
    i32 9, label %csroa.if.then42.i963
    i32 10, label %csroa.if.then46.i
    i32 11, label %csroa.if.then50.i
    i32 12, label %csroa.if.then54.i
    i32 13, label %csroa.if.then58.i
    i32 14, label %csroa.if.then62.i966
    i32 15, label %csroa.if.then66.i
    i32 16, label %csroa.if.then70.i
    i32 17, label %csroa.if.then74.i
    i32 18, label %csroa.if.then78.i
    i32 19, label %csroa.if.then82.i969
    i32 20, label %csroa.if.then86.i
    i32 21, label %csroa.if.then90.i
  ]

csroa.if.then22.i960:                             ; preds = %csroa.if.else15.i
  br label %for.inc37.sink.split

csroa.if.then26.i:                                ; preds = %csroa.if.else15.i
  br label %for.inc37.sink.split

csroa.if.then30.i:                                ; preds = %csroa.if.else15.i
  br label %for.inc37.sink.split

csroa.if.then34.i:                                ; preds = %csroa.if.else15.i
  br label %for.inc37.sink.split

csroa.if.then38.i:                                ; preds = %csroa.if.else15.i
  br label %for.inc37.sink.split

csroa.if.then42.i963:                             ; preds = %csroa.if.else15.i
  br label %for.inc37.sink.split

csroa.if.then46.i:                                ; preds = %csroa.if.else15.i
  br label %for.inc37.sink.split

csroa.if.then50.i:                                ; preds = %csroa.if.else15.i
  br label %for.inc37.sink.split

csroa.if.then54.i:                                ; preds = %csroa.if.else15.i
  br label %for.inc37.sink.split

csroa.if.then58.i:                                ; preds = %csroa.if.else15.i
  br label %for.inc37.sink.split

csroa.if.then62.i966:                             ; preds = %csroa.if.else15.i
  br label %for.inc37.sink.split

csroa.if.then66.i:                                ; preds = %csroa.if.else15.i
  br label %for.inc37.sink.split

csroa.if.then70.i:                                ; preds = %csroa.if.else15.i
  br label %for.inc37.sink.split

csroa.if.then74.i:                                ; preds = %csroa.if.else15.i
  br label %for.inc37.sink.split

csroa.if.then78.i:                                ; preds = %csroa.if.else15.i
  br label %for.inc37.sink.split

csroa.if.then82.i969:                             ; preds = %csroa.if.else15.i
  br label %for.inc37.sink.split

csroa.if.then86.i:                                ; preds = %csroa.if.else15.i
  br label %for.inc37.sink.split

csroa.if.then90.i:                                ; preds = %csroa.if.else15.i
  br label %for.inc37.sink.split

for.inc37.sink.split:                             ; preds = %csroa.if.else15.i, %__non_const_wrapper__.28.exit, %csroa.if.then10.i, %csroa.if.then26.i, %csroa.if.then34.i, %csroa.if.then42.i963, %csroa.if.then50.i, %csroa.if.then58.i, %csroa.if.then66.i, %csroa.if.then74.i, %csroa.if.then82.i969, %csroa.if.then90.i, %csroa.if.then86.i, %csroa.if.then78.i, %csroa.if.then70.i, %csroa.if.then62.i966, %csroa.if.then54.i, %csroa.if.then46.i, %csroa.if.then38.i, %csroa.if.then30.i, %csroa.if.then22.i960, %csroa.if.then14.i, %csroa.if.then6.i, %csroa.if.then.i954
  %tqmf.0.sink = phi i32* [ @tqmf.0, %csroa.if.then.i954 ], [ @tqmf.2, %csroa.if.then6.i ], [ @tqmf.4, %csroa.if.then14.i ], [ @tqmf.6, %csroa.if.then22.i960 ], [ @tqmf.8, %csroa.if.then30.i ], [ @tqmf.10, %csroa.if.then38.i ], [ @tqmf.12, %csroa.if.then46.i ], [ @tqmf.14, %csroa.if.then54.i ], [ @tqmf.16, %csroa.if.then62.i966 ], [ @tqmf.18, %csroa.if.then70.i ], [ @tqmf.20, %csroa.if.then78.i ], [ @tqmf.22, %csroa.if.then86.i ], [ @tqmf.23, %csroa.if.then90.i ], [ @tqmf.21, %csroa.if.then82.i969 ], [ @tqmf.19, %csroa.if.then74.i ], [ @tqmf.17, %csroa.if.then66.i ], [ @tqmf.15, %csroa.if.then58.i ], [ @tqmf.13, %csroa.if.then50.i ], [ @tqmf.11, %csroa.if.then42.i963 ], [ @tqmf.9, %csroa.if.then34.i ], [ @tqmf.7, %csroa.if.then26.i ], [ @tqmf.3, %csroa.if.then10.i ], [ @tqmf.1, %__non_const_wrapper__.28.exit ], [ @tqmf.5, %csroa.if.else15.i ]
  store i32 %.phi.i952, i32* %tqmf.0.sink, align 16
  br label %for.inc37

for.inc37:                                        ; preds = %for.inc37.sink.split, %csroa.if.else15.i
  %inc38 = add nuw nsw i32 %i.19, 1
  %tqmf_ptr.1.firstgepi.gepi.add = add i32 %tqmf_ptr.1.phi8, 20
  %exitcond = icmp eq i32 %inc38, 22
  br i1 %exitcond, label %__non_const_wrapper__.31.exit, label %for.body34

__non_const_wrapper__.31.exit:                    ; preds = %for.inc37
  %add30 = add nsw i64 %mul29, %add19
  store i32 %xin1, i32* @tqmf.1, align 16
  store i32 %xin2, i32* @tqmf.0, align 16
  %add41 = add nsw i64 %add30, %add25
  %shr1 = lshr i64 %add41, 15
  %conv42 = trunc i64 %shr1 to i32
  store i32 %conv42, i32* @xl, align 4
  %sub = sub nsw i64 %add25, %add30
  %shr432 = lshr i64 %sub, 15
  %conv44 = trunc i64 %shr432 to i32
  store i32 %conv44, i32* @xh, align 4
  %call.c.load.12 = load i32, i32* @delay_bpl.0, align 16
  %call.c.load.121275 = load i32, i32* @delay_bpl.1, align 16
  %call.c.load.121276 = load i32, i32* @delay_bpl.2, align 16
  %call.c.load.121277 = load i32, i32* @delay_bpl.3, align 16
  %call.c.load.121278 = load i32, i32* @delay_bpl.4, align 16
  %call.c.load.121279 = load i32, i32* @delay_bpl.5, align 16
  %call.c.load.121280 = load i32, i32* @delay_dltx.0, align 16
  %call.c.load.121281 = load i32, i32* @delay_dltx.1, align 16
  %call.c.load.121282 = load i32, i32* @delay_dltx.2, align 16
  %call.c.load.121283 = load i32, i32* @delay_dltx.3, align 16
  %call.c.load.121284 = load i32, i32* @delay_dltx.4, align 16
  %call.c.load.121285 = load i32, i32* @delay_dltx.5, align 16
  %call.c.c = tail call i32 @filtez.v0.C.c.c(i32 %call.c.load.12, i32 %call.c.load.121275, i32 %call.c.load.121276, i32 %call.c.load.121277, i32 %call.c.load.121278, i32 %call.c.load.121279, i32 %call.c.load.121280, i32 %call.c.load.121281, i32 %call.c.load.121282, i32 %call.c.load.121283, i32 %call.c.load.121284, i32 %call.c.load.121285)
  store i32 %call.c.c, i32* @szl, align 4
  %48 = load i32, i32* @rlt1, align 4
  %49 = load i32, i32* @al1, align 4
  %50 = load i32, i32* @rlt2, align 4
  %51 = load i32, i32* @al2, align 4
  %call45.c.c = tail call i32 @filtep.v0.C.c.c(i32 %48, i32 %49, i32 %50, i32 %51)
  store i32 %call45.c.c, i32* @spl, align 4
  %add46 = add nsw i32 %call.c.c, %call45.c.c
  store i32 %add46, i32* @sl, align 4
  %sub47 = sub nsw i32 %conv42, %add46
  store i32 %sub47, i32* @el, align 4
  %52 = load i32, i32* @detl, align 4
  %call48.c.c = tail call i32 @quantl.v0.C.c.c(i32 %sub47, i32 %52)
  store i32 %call48.c.c, i32* @il, align 4
  %conv49 = sext i32 %52 to i64
  %shr50 = ashr i32 %call48.c.c, 2
  switch i32 %shr50, label %csroa.if.end74.i1215 [
    i32 0, label %__non_const_wrapper__.32.exit
    i32 1, label %csroa.if.end4.i1243
    i32 2, label %csroa.if.end9.i1241
    i32 3, label %csroa.if.end14.i1239
    i32 4, label %csroa.if.end19.i1237
    i32 5, label %csroa.if.end19.i1237.fold.split
    i32 6, label %csroa.if.end29.i1233
    i32 7, label %csroa.if.end34.i1231
    i32 8, label %csroa.if.end39.i1229
    i32 9, label %csroa.if.end44.i1227
    i32 10, label %csroa.if.end49.i1225
    i32 11, label %csroa.if.end54.i1223
    i32 12, label %csroa.if.end59.i1221
    i32 13, label %csroa.if.end64.i1219
    i32 14, label %csroa.if.end69.i1217
  ]

csroa.if.end74.i1215:                             ; preds = %__non_const_wrapper__.31.exit
  br label %csroa.if.end69.i1217

csroa.if.end69.i1217:                             ; preds = %__non_const_wrapper__.31.exit, %csroa.if.end74.i1215
  %.phi70.i1216 = phi i64 [ 0, %csroa.if.end74.i1215 ], [ 5153960755200, %__non_const_wrapper__.31.exit ]
  br label %csroa.if.end64.i1219

csroa.if.end64.i1219:                             ; preds = %__non_const_wrapper__.31.exit, %csroa.if.end69.i1217
  %.phi65.i1218 = phi i64 [ %.phi70.i1216, %csroa.if.end69.i1217 ], [ 11098195492864, %__non_const_wrapper__.31.exit ]
  br label %csroa.if.end59.i1221

csroa.if.end59.i1221:                             ; preds = %__non_const_wrapper__.31.exit, %csroa.if.end64.i1219
  %.phi60.i1220 = phi i64 [ %.phi65.i1218, %csroa.if.end64.i1219 ], [ 18210661335040, %__non_const_wrapper__.31.exit ]
  br label %csroa.if.end54.i1223

csroa.if.end54.i1223:                             ; preds = %__non_const_wrapper__.31.exit, %csroa.if.end59.i1221
  %.phi55.i1222 = phi i64 [ %.phi60.i1220, %csroa.if.end59.i1221 ], [ 27006754357248, %__non_const_wrapper__.31.exit ]
  br label %csroa.if.end49.i1225

csroa.if.end49.i1225:                             ; preds = %__non_const_wrapper__.31.exit, %csroa.if.end54.i1223
  %.phi50.i1224 = phi i64 [ %.phi55.i1222, %csroa.if.end54.i1223 ], [ 38517266710528, %__non_const_wrapper__.31.exit ]
  br label %csroa.if.end44.i1227

csroa.if.end44.i1227:                             ; preds = %__non_const_wrapper__.31.exit, %csroa.if.end49.i1225
  %.phi45.i1226 = phi i64 [ %.phi50.i1224, %csroa.if.end49.i1225 ], [ 55387898249216, %__non_const_wrapper__.31.exit ]
  br label %csroa.if.end39.i1229

csroa.if.end39.i1229:                             ; preds = %__non_const_wrapper__.31.exit, %csroa.if.end44.i1227
  %.phi40.i1228 = phi i64 [ %.phi45.i1226, %csroa.if.end44.i1227 ], [ 87857851006976, %__non_const_wrapper__.31.exit ]
  br label %csroa.if.end34.i1231

csroa.if.end34.i1231:                             ; preds = %__non_const_wrapper__.31.exit, %csroa.if.end39.i1229
  %.phi35.i1230 = phi i64 [ %.phi40.i1228, %csroa.if.end39.i1229 ], [ -5153960755200, %__non_const_wrapper__.31.exit ]
  br label %csroa.if.end29.i1233

csroa.if.end29.i1233:                             ; preds = %__non_const_wrapper__.31.exit, %csroa.if.end34.i1231
  %.phi30.i1232 = phi i64 [ %.phi35.i1230, %csroa.if.end34.i1231 ], [ -11098195492864, %__non_const_wrapper__.31.exit ]
  br label %csroa.if.end19.i1237

csroa.if.end19.i1237.fold.split:                  ; preds = %__non_const_wrapper__.31.exit
  br label %csroa.if.end19.i1237

csroa.if.end19.i1237:                             ; preds = %__non_const_wrapper__.31.exit, %csroa.if.end19.i1237.fold.split, %csroa.if.end29.i1233
  %.phi20.i1236 = phi i64 [ -27006754357248, %__non_const_wrapper__.31.exit ], [ %.phi30.i1232, %csroa.if.end29.i1233 ], [ -18210661335040, %csroa.if.end19.i1237.fold.split ]
  br label %csroa.if.end14.i1239

csroa.if.end14.i1239:                             ; preds = %__non_const_wrapper__.31.exit, %csroa.if.end19.i1237
  %.phi15.i1238 = phi i64 [ %.phi20.i1236, %csroa.if.end19.i1237 ], [ -38517266710528, %__non_const_wrapper__.31.exit ]
  br label %csroa.if.end9.i1241

csroa.if.end9.i1241:                              ; preds = %__non_const_wrapper__.31.exit, %csroa.if.end14.i1239
  %.phi10.i1240 = phi i64 [ %.phi15.i1238, %csroa.if.end14.i1239 ], [ -55387898249216, %__non_const_wrapper__.31.exit ]
  br label %csroa.if.end4.i1243

csroa.if.end4.i1243:                              ; preds = %__non_const_wrapper__.31.exit, %csroa.if.end9.i1241
  %.phi5.i1242 = phi i64 [ %.phi10.i1240, %csroa.if.end9.i1241 ], [ -87857851006976, %__non_const_wrapper__.31.exit ]
  br label %__non_const_wrapper__.32.exit

__non_const_wrapper__.32.exit:                    ; preds = %__non_const_wrapper__.31.exit, %csroa.if.end4.i1243
  %.phi.i1244 = phi i64 [ %.phi5.i1242, %csroa.if.end4.i1243 ], [ 0, %__non_const_wrapper__.31.exit ]
  %conv51 = ashr exact i64 %.phi.i1244, 32
  %mul52 = mul nsw i64 %conv51, %conv49
  %shr533 = lshr i64 %mul52, 15
  %conv54 = trunc i64 %shr533 to i32
  store i32 %conv54, i32* @dlt, align 4
  %53 = load i32, i32* @nbl, align 4
  %call55.c.c = tail call i32 @logscl.v0.C.c.c(i32 %call48.c.c, i32 %53)
  store i32 %call55.c.c, i32* @nbl, align 4
  %call56.c.c = tail call i32 @scalel.v0.C.c.c(i32 %call55.c.c, i32 8)
  store i32 %call56.c.c, i32* @detl, align 4
  %add57 = add nsw i32 %call.c.c, %conv54
  store i32 %add57, i32* @plt, align 4
  tail call void @upzero.v0.C.c.c(i32 %conv54, i32* nonnull @delay_dltx.0, i32* nonnull @delay_dltx.1, i32* nonnull @delay_dltx.2, i32* nonnull @delay_dltx.3, i32* nonnull @delay_dltx.4, i32* nonnull @delay_dltx.5, i32* nonnull @delay_bpl.0, i32* nonnull @delay_bpl.1, i32* nonnull @delay_bpl.2, i32* nonnull @delay_bpl.3, i32* nonnull @delay_bpl.4, i32* nonnull @delay_bpl.5)
  %54 = load i32, i32* @al1, align 4
  %55 = load i32, i32* @al2, align 4
  %56 = load i32, i32* @plt, align 4
  %57 = load i32, i32* @plt1, align 4
  %58 = load i32, i32* @plt2, align 4
  %call58.c.c = tail call i32 @uppol2.v0.C.c.c(i32 %54, i32 %55, i32 %56, i32 %57, i32 %58)
  store i32 %call58.c.c, i32* @al2, align 4
  %call59.c.c = tail call i32 @uppol1.v0.C.c.c(i32 %54, i32 %call58.c.c, i32 %56, i32 %57)
  store i32 %call59.c.c, i32* @al1, align 4
  %59 = load i32, i32* @sl, align 4
  %60 = load i32, i32* @dlt, align 4
  %add60 = add nsw i32 %60, %59
  store i32 %add60, i32* @rlt, align 4
  %61 = load i32, i32* @rlt1, align 4
  store i32 %61, i32* @rlt2, align 4
  store i32 %add60, i32* @rlt1, align 4
  store i32 %57, i32* @plt2, align 4
  store i32 %56, i32* @plt1, align 4
  %call61.c.load.12 = load i32, i32* @delay_bph.0, align 16
  %call61.c.load.121264 = load i32, i32* @delay_bph.1, align 16
  %call61.c.load.121265 = load i32, i32* @delay_bph.2, align 16
  %call61.c.load.121266 = load i32, i32* @delay_bph.3, align 16
  %call61.c.load.121267 = load i32, i32* @delay_bph.4, align 16
  %call61.c.load.121268 = load i32, i32* @delay_bph.5, align 16
  %call61.c.load.121269 = load i32, i32* @delay_dhx.0, align 16
  %call61.c.load.121270 = load i32, i32* @delay_dhx.1, align 16
  %call61.c.load.121271 = load i32, i32* @delay_dhx.2, align 16
  %call61.c.load.121272 = load i32, i32* @delay_dhx.3, align 16
  %call61.c.load.121273 = load i32, i32* @delay_dhx.4, align 16
  %call61.c.load.121274 = load i32, i32* @delay_dhx.5, align 16
  %call61.c.c = tail call i32 @filtez.v0.C.c.c(i32 %call61.c.load.12, i32 %call61.c.load.121264, i32 %call61.c.load.121265, i32 %call61.c.load.121266, i32 %call61.c.load.121267, i32 %call61.c.load.121268, i32 %call61.c.load.121269, i32 %call61.c.load.121270, i32 %call61.c.load.121271, i32 %call61.c.load.121272, i32 %call61.c.load.121273, i32 %call61.c.load.121274)
  store i32 %call61.c.c, i32* @szh, align 4
  %62 = load i32, i32* @rh1, align 4
  %63 = load i32, i32* @ah1, align 4
  %64 = load i32, i32* @rh2, align 4
  %65 = load i32, i32* @ah2, align 4
  %call62.c.c = tail call i32 @filtep.v0.C.c.c(i32 %62, i32 %63, i32 %64, i32 %65)
  store i32 %call62.c.c, i32* @sph, align 4
  %add63 = add nsw i32 %call61.c.c, %call62.c.c
  store i32 %add63, i32* @sh, align 4
  %66 = load i32, i32* @xh, align 4
  %sub64 = sub nsw i32 %66, %add63
  store i32 %sub64, i32* @eh, align 4
  %67 = ashr i32 %sub64, 31
  %68 = and i32 %67, -2
  %69 = add nsw i32 %68, 3
  store i32 %69, i32* @ih, align 4
  %70 = load i32, i32* @deth, align 4
  %conv67 = sext i32 %70 to i64
  %mul68 = mul nsw i64 %conv67, 564
  %shr694 = lshr i64 %mul68, 12
  %conv70 = trunc i64 %shr694 to i32
  %call71.c = tail call i32 @abs.v0.C.c(i32 %sub64)
  %cmp72 = icmp sgt i32 %call71.c, %conv70
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %__non_const_wrapper__.32.exit
  %dec = add nsw i32 %68, 2
  store i32 %dec, i32* @ih, align 4
  br label %if.end75

if.end75:                                         ; preds = %__non_const_wrapper__.32.exit, %if.then74
  %71 = phi i32 [ %dec, %if.then74 ], [ %69, %__non_const_wrapper__.32.exit ]
  switch i32 %71, label %csroa.if.end14.i1258 [
    i32 0, label %__non_const_wrapper__.33.exit
    i32 1, label %csroa.if.end4.i1262
    i32 2, label %csroa.if.end9.i1260
  ]

csroa.if.end14.i1258:                             ; preds = %if.end75
  br label %csroa.if.end9.i1260

csroa.if.end9.i1260:                              ; preds = %if.end75, %csroa.if.end14.i1258
  %.phi10.i1259 = phi i64 [ 1616, %csroa.if.end14.i1258 ], [ 7408, %if.end75 ]
  br label %csroa.if.end4.i1262

csroa.if.end4.i1262:                              ; preds = %if.end75, %csroa.if.end9.i1260
  %.phi5.i1261 = phi i64 [ %.phi10.i1259, %csroa.if.end9.i1260 ], [ -1616, %if.end75 ]
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.33.exit:                    ; preds = %if.end75, %csroa.if.end4.i1262
  %.phi.i1263 = phi i64 [ %.phi5.i1261, %csroa.if.end4.i1262 ], [ -7408, %if.end75 ]
  %mul80 = mul nsw i64 %.phi.i1263, %conv67
  %shr815 = lshr i64 %mul80, 15
  %conv82 = trunc i64 %shr815 to i32
  store i32 %conv82, i32* @dh, align 4
  %72 = load i32, i32* @nbh, align 4
  %call83.c.c = tail call i32 @logsch.v0.C.c.c(i32 %71, i32 %72)
  store i32 %call83.c.c, i32* @nbh, align 4
  %call84.c.c = tail call i32 @scalel.v0.C.c.c(i32 %call83.c.c, i32 10)
  store i32 %call84.c.c, i32* @deth, align 4
  %add85 = add nsw i32 %call61.c.c, %conv82
  store i32 %add85, i32* @ph, align 4
  tail call void @upzero.v0.C.c.c(i32 %conv82, i32* nonnull @delay_dhx.0, i32* nonnull @delay_dhx.1, i32* nonnull @delay_dhx.2, i32* nonnull @delay_dhx.3, i32* nonnull @delay_dhx.4, i32* nonnull @delay_dhx.5, i32* nonnull @delay_bph.0, i32* nonnull @delay_bph.1, i32* nonnull @delay_bph.2, i32* nonnull @delay_bph.3, i32* nonnull @delay_bph.4, i32* nonnull @delay_bph.5)
  %73 = load i32, i32* @ah1, align 4
  %74 = load i32, i32* @ah2, align 4
  %75 = load i32, i32* @ph, align 4
  %76 = load i32, i32* @ph1, align 4
  %77 = load i32, i32* @ph2, align 4
  %call86.c.c = tail call i32 @uppol2.v0.C.c.c(i32 %73, i32 %74, i32 %75, i32 %76, i32 %77)
  store i32 %call86.c.c, i32* @ah2, align 4
  %call87.c.c = tail call i32 @uppol1.v0.C.c.c(i32 %73, i32 %call86.c.c, i32 %75, i32 %76)
  store i32 %call87.c.c, i32* @ah1, align 4
  %78 = load i32, i32* @sh, align 4
  %79 = load i32, i32* @dh, align 4
  %add88 = add nsw i32 %79, %78
  store i32 %add88, i32* @yh, align 4
  %80 = load i32, i32* @rh1, align 4
  store i32 %80, i32* @rh2, align 4
  store i32 %add88, i32* @rh1, align 4
  store i32 %76, i32* @ph2, align 4
  store i32 %75, i32* @ph1, align 4
  %81 = load i32, i32* @il, align 4
  %82 = load i32, i32* @ih, align 4
  %shl = shl i32 %82, 6
  %or = or i32 %shl, %81
  ret i32 %or
}

; Function Attrs: noinline norecurse nounwind
define void @decode.v0.C.c.c(i32 %input) local_unnamed_addr #4 {
entry:
  %and = and i32 %input, 63
  store i32 %and, i32* @ilr, align 4
  %shr = ashr i32 %input, 6
  store i32 %shr, i32* @ih, align 4
  %call.c.load.12 = load i32, i32* @dec_del_bpl.0, align 16
  %call.c.load.121038 = load i32, i32* @dec_del_bpl.1, align 16
  %call.c.load.121039 = load i32, i32* @dec_del_bpl.2, align 16
  %call.c.load.121040 = load i32, i32* @dec_del_bpl.3, align 16
  %call.c.load.121041 = load i32, i32* @dec_del_bpl.4, align 16
  %call.c.load.121042 = load i32, i32* @dec_del_bpl.5, align 16
  %call.c.load.121043 = load i32, i32* @dec_del_dltx.0, align 16
  %call.c.load.121044 = load i32, i32* @dec_del_dltx.1, align 16
  %call.c.load.121045 = load i32, i32* @dec_del_dltx.2, align 16
  %call.c.load.121046 = load i32, i32* @dec_del_dltx.3, align 16
  %call.c.load.121047 = load i32, i32* @dec_del_dltx.4, align 16
  %call.c.load.121048 = load i32, i32* @dec_del_dltx.5, align 16
  %call.c.c = tail call i32 @filtez.v0.C.c.c(i32 %call.c.load.12, i32 %call.c.load.121038, i32 %call.c.load.121039, i32 %call.c.load.121040, i32 %call.c.load.121041, i32 %call.c.load.121042, i32 %call.c.load.121043, i32 %call.c.load.121044, i32 %call.c.load.121045, i32 %call.c.load.121046, i32 %call.c.load.121047, i32 %call.c.load.121048)
  store i32 %call.c.c, i32* @dec_szl, align 4
  %0 = load i32, i32* @dec_rlt1, align 4
  %1 = load i32, i32* @dec_al1, align 4
  %2 = load i32, i32* @dec_rlt2, align 4
  %3 = load i32, i32* @dec_al2, align 4
  %call1.c.c = tail call i32 @filtep.v0.C.c.c(i32 %0, i32 %1, i32 %2, i32 %3)
  store i32 %call1.c.c, i32* @dec_spl, align 4
  %add = add nsw i32 %call.c.c, %call1.c.c
  store i32 %add, i32* @dec_sl, align 4
  %4 = load i32, i32* @dec_detl, align 4
  %conv = sext i32 %4 to i64
  %shr222 = lshr i32 %input, 2
  %trunc = trunc i32 %shr222 to i4
  switch i4 %trunc, label %csroa.if.end74.i [
    i4 0, label %__non_const_wrapper__.34.exit
    i4 1, label %csroa.if.end4.i
    i4 2, label %csroa.if.end9.i
    i4 3, label %csroa.if.end14.i
    i4 4, label %csroa.if.end19.i
    i4 5, label %csroa.if.end24.i
    i4 6, label %csroa.if.end29.i
    i4 7, label %csroa.if.end34.i
    i4 -8, label %csroa.if.end39.i
    i4 -7, label %csroa.if.end44.i
    i4 -6, label %csroa.if.end49.i
    i4 -5, label %csroa.if.end54.i
    i4 -4, label %csroa.if.end59.i
    i4 -3, label %csroa.if.end64.i
    i4 -2, label %csroa.if.end69.i
  ]

csroa.if.end74.i:                                 ; preds = %entry
  br label %csroa.if.end69.i

csroa.if.end69.i:                                 ; preds = %entry, %csroa.if.end74.i
  %.phi70.i = phi i64 [ 0, %csroa.if.end74.i ], [ 5153960755200, %entry ]
  br label %csroa.if.end64.i

csroa.if.end64.i:                                 ; preds = %entry, %csroa.if.end69.i
  %.phi65.i = phi i64 [ %.phi70.i, %csroa.if.end69.i ], [ 11098195492864, %entry ]
  br label %csroa.if.end59.i

csroa.if.end59.i:                                 ; preds = %entry, %csroa.if.end64.i
  %.phi60.i = phi i64 [ %.phi65.i, %csroa.if.end64.i ], [ 18210661335040, %entry ]
  br label %csroa.if.end54.i

csroa.if.end54.i:                                 ; preds = %entry, %csroa.if.end59.i
  %.phi55.i = phi i64 [ %.phi60.i, %csroa.if.end59.i ], [ 27006754357248, %entry ]
  br label %csroa.if.end49.i

csroa.if.end49.i:                                 ; preds = %entry, %csroa.if.end54.i
  %.phi50.i = phi i64 [ %.phi55.i, %csroa.if.end54.i ], [ 38517266710528, %entry ]
  br label %csroa.if.end44.i

csroa.if.end44.i:                                 ; preds = %entry, %csroa.if.end49.i
  %.phi45.i = phi i64 [ %.phi50.i, %csroa.if.end49.i ], [ 55387898249216, %entry ]
  br label %csroa.if.end39.i

csroa.if.end39.i:                                 ; preds = %entry, %csroa.if.end44.i
  %.phi40.i = phi i64 [ %.phi45.i, %csroa.if.end44.i ], [ 87857851006976, %entry ]
  br label %csroa.if.end34.i

csroa.if.end34.i:                                 ; preds = %entry, %csroa.if.end39.i
  %.phi35.i = phi i64 [ %.phi40.i, %csroa.if.end39.i ], [ -5153960755200, %entry ]
  br label %csroa.if.end29.i

csroa.if.end29.i:                                 ; preds = %entry, %csroa.if.end34.i
  %.phi30.i = phi i64 [ %.phi35.i, %csroa.if.end34.i ], [ -11098195492864, %entry ]
  br label %csroa.if.end24.i

csroa.if.end24.i:                                 ; preds = %entry, %csroa.if.end29.i
  %.phi25.i = phi i64 [ %.phi30.i, %csroa.if.end29.i ], [ -18210661335040, %entry ]
  br label %csroa.if.end19.i

csroa.if.end19.i:                                 ; preds = %entry, %csroa.if.end24.i
  %.phi20.i = phi i64 [ %.phi25.i, %csroa.if.end24.i ], [ -27006754357248, %entry ]
  br label %csroa.if.end14.i

csroa.if.end14.i:                                 ; preds = %entry, %csroa.if.end19.i
  %.phi15.i = phi i64 [ %.phi20.i, %csroa.if.end19.i ], [ -38517266710528, %entry ]
  br label %csroa.if.end9.i

csroa.if.end9.i:                                  ; preds = %entry, %csroa.if.end14.i
  %.phi10.i = phi i64 [ %.phi15.i, %csroa.if.end14.i ], [ -55387898249216, %entry ]
  br label %csroa.if.end4.i

csroa.if.end4.i:                                  ; preds = %entry, %csroa.if.end9.i
  %.phi5.i = phi i64 [ %.phi10.i, %csroa.if.end9.i ], [ -87857851006976, %entry ]
  br label %__non_const_wrapper__.34.exit

__non_const_wrapper__.34.exit:                    ; preds = %entry, %csroa.if.end4.i
  %.phi.i = phi i64 [ %.phi5.i, %csroa.if.end4.i ], [ 0, %entry ]
  %conv3 = ashr exact i64 %.phi.i, 32
  %mul = mul nsw i64 %conv3, %conv
  %shr41 = lshr i64 %mul, 15
  %conv5 = trunc i64 %shr41 to i32
  store i32 %conv5, i32* @dec_dlt, align 4
  %5 = load i32, i32* @il, align 4
  switch i32 %5, label %csroa.if.end314.i [
    i32 0, label %__non_const_wrapper__.35.exit
    i32 1, label %__non_const_wrapper__.35.exit
    i32 2, label %__non_const_wrapper__.35.exit
    i32 3, label %__non_const_wrapper__.35.exit
    i32 4, label %csroa.if.end19.i71
    i32 5, label %csroa.if.end24.i69
    i32 6, label %csroa.if.end29.i67
    i32 7, label %csroa.if.end34.i65
    i32 8, label %csroa.if.end39.i63
    i32 9, label %csroa.if.end44.i61
    i32 10, label %csroa.if.end49.i59
    i32 11, label %csroa.if.end54.i57
    i32 12, label %csroa.if.end59.i55
    i32 13, label %csroa.if.end64.i53
    i32 14, label %csroa.if.end69.i51
    i32 15, label %csroa.if.end74.i49
    i32 16, label %csroa.if.end79.i
    i32 17, label %csroa.if.end84.i
    i32 18, label %csroa.if.end89.i
    i32 19, label %csroa.if.end94.i
    i32 20, label %csroa.if.end99.i
    i32 21, label %csroa.if.end104.i
    i32 22, label %csroa.if.end109.i
    i32 23, label %csroa.if.end114.i
    i32 24, label %csroa.if.end119.i
    i32 25, label %csroa.if.end124.i
    i32 26, label %csroa.if.end129.i
    i32 27, label %csroa.if.end134.i
    i32 28, label %csroa.if.end139.i
    i32 29, label %csroa.if.end144.i
    i32 30, label %csroa.if.end149.i
    i32 31, label %csroa.if.end154.i
    i32 32, label %csroa.if.end159.i
    i32 33, label %csroa.if.end164.i
    i32 34, label %csroa.if.end169.i
    i32 35, label %csroa.if.end174.i
    i32 36, label %csroa.if.end179.i
    i32 37, label %csroa.if.end184.i
    i32 38, label %csroa.if.end189.i
    i32 39, label %csroa.if.end194.i
    i32 40, label %csroa.if.end199.i
    i32 41, label %csroa.if.end204.i
    i32 42, label %csroa.if.end209.i
    i32 43, label %csroa.if.end214.i
    i32 44, label %csroa.if.end219.i
    i32 45, label %csroa.if.end224.i
    i32 46, label %csroa.if.end229.i
    i32 47, label %csroa.if.end234.i
    i32 48, label %csroa.if.end239.i
    i32 49, label %csroa.if.end244.i
    i32 50, label %csroa.if.end249.i
    i32 51, label %csroa.if.end254.i
    i32 52, label %csroa.if.end259.i
    i32 53, label %csroa.if.end264.i
    i32 54, label %csroa.if.end269.i
    i32 55, label %csroa.if.end274.i
    i32 56, label %csroa.if.end279.i
    i32 57, label %csroa.if.end284.i
    i32 58, label %csroa.if.end289.i
    i32 59, label %csroa.if.end294.i
    i32 60, label %csroa.if.end299.i
    i32 61, label %csroa.if.end304.i
    i32 62, label %csroa.if.end309.i
  ]

csroa.if.end314.i:                                ; preds = %__non_const_wrapper__.34.exit
  br label %csroa.if.end309.i

csroa.if.end309.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end314.i
  %.phi310.i = phi i64 [ -584115552256, %csroa.if.end314.i ], [ -1855425871872, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end304.i

csroa.if.end304.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end309.i
  %.phi305.i = phi i64 [ %.phi310.i, %csroa.if.end309.i ], [ 584115552256, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end299.i

csroa.if.end299.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end304.i
  %.phi300.i = phi i64 [ %.phi305.i, %csroa.if.end304.i ], [ 1855425871872, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end294.i

csroa.if.end294.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end299.i
  %.phi295.i = phi i64 [ %.phi300.i, %csroa.if.end299.i ], [ 3126736191488, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end289.i

csroa.if.end289.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end294.i
  %.phi290.i = phi i64 [ %.phi295.i, %csroa.if.end294.i ], [ 4466765987840, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end284.i

csroa.if.end284.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end289.i
  %.phi285.i = phi i64 [ %.phi290.i, %csroa.if.end289.i ], [ 5841155522560, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end279.i

csroa.if.end279.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end284.i
  %.phi280.i = phi i64 [ %.phi285.i, %csroa.if.end284.i ], [ 7249904795648, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end274.i

csroa.if.end274.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end279.i
  %.phi275.i = phi i64 [ %.phi280.i, %csroa.if.end279.i ], [ 8727373545472, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end269.i

csroa.if.end269.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end274.i
  %.phi270.i = phi i64 [ %.phi275.i, %csroa.if.end274.i ], [ 10307921510400, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end264.i

csroa.if.end264.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end269.i
  %.phi265.i = phi i64 [ %.phi270.i, %csroa.if.end269.i ], [ 11922829213696, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end259.i

csroa.if.end259.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end264.i
  %.phi260.i = phi i64 [ %.phi265.i, %csroa.if.end264.i ], [ 13606456393728, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end254.i

csroa.if.end254.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end259.i
  %.phi255.i = phi i64 [ %.phi260.i, %csroa.if.end259.i ], [ 15358803050496, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end249.i

csroa.if.end249.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end254.i
  %.phi250.i = phi i64 [ %.phi255.i, %csroa.if.end254.i ], [ 17214228922368, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end244.i

csroa.if.end244.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end249.i
  %.phi245.i = phi i64 [ %.phi250.i, %csroa.if.end249.i ], [ 19172734009344, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end239.i

csroa.if.end239.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end244.i
  %.phi240.i = phi i64 [ %.phi245.i, %csroa.if.end244.i ], [ 21234318311424, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end234.i

csroa.if.end234.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end239.i
  %.phi235.i = phi i64 [ %.phi240.i, %csroa.if.end239.i ], [ 23433341566976, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end229.i

csroa.if.end229.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end234.i
  %.phi230.i = phi i64 [ %.phi235.i, %csroa.if.end234.i ], [ 25769803776000, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end224.i

csroa.if.end224.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end229.i
  %.phi225.i = phi i64 [ %.phi230.i, %csroa.if.end229.i ], [ 28243704938496, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end219.i

csroa.if.end219.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end224.i
  %.phi220.i = phi i64 [ %.phi225.i, %csroa.if.end224.i ], [ 30889404792832, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end214.i

csroa.if.end214.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end219.i
  %.phi215.i = phi i64 [ %.phi220.i, %csroa.if.end219.i ], [ 33741263077376, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end209.i

csroa.if.end209.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end214.i
  %.phi210.i = phi i64 [ %.phi215.i, %csroa.if.end214.i ], [ 36833639530496, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end204.i

csroa.if.end204.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end209.i
  %.phi205.i = phi i64 [ %.phi210.i, %csroa.if.end209.i ], [ 40200893890560, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end199.i

csroa.if.end199.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end204.i
  %.phi200.i = phi i64 [ %.phi205.i, %csroa.if.end204.i ], [ 43946105372672, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end194.i

csroa.if.end194.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end199.i
  %.phi195.i = phi i64 [ %.phi200.i, %csroa.if.end199.i ], [ 48069273976832, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end189.i

csroa.if.end189.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end194.i
  %.phi190.i = phi i64 [ %.phi195.i, %csroa.if.end194.i ], [ 52742198394880, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end184.i

csroa.if.end184.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end189.i
  %.phi185.i = phi i64 [ %.phi190.i, %csroa.if.end189.i ], [ 58033598103552, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end179.i

csroa.if.end179.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end184.i
  %.phi180.i = phi i64 [ %.phi185.i, %csroa.if.end184.i ], [ 64355789963264, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end174.i

csroa.if.end174.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end179.i
  %.phi175.i = phi i64 [ %.phi180.i, %csroa.if.end179.i ], [ 71743133712384, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end169.i

csroa.if.end169.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end174.i
  %.phi170.i = phi i64 [ %.phi175.i, %csroa.if.end174.i ], [ 81638738362368, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end164.i

csroa.if.end164.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end169.i
  %.phi165.i = phi i64 [ %.phi170.i, %csroa.if.end169.i ], [ 94076963651584, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end159.i

csroa.if.end159.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end164.i
  %.phi160.i = phi i64 [ %.phi165.i, %csroa.if.end164.i ], [ 106549548679168, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end154.i

csroa.if.end154.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end159.i
  %.phi155.i = phi i64 [ %.phi160.i, %csroa.if.end159.i ], [ -3126736191488, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end149.i

csroa.if.end149.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end154.i
  %.phi150.i = phi i64 [ %.phi155.i, %csroa.if.end154.i ], [ -4466765987840, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end144.i

csroa.if.end144.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end149.i
  %.phi145.i = phi i64 [ %.phi150.i, %csroa.if.end149.i ], [ -5841155522560, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end139.i

csroa.if.end139.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end144.i
  %.phi140.i = phi i64 [ %.phi145.i, %csroa.if.end144.i ], [ -7249904795648, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end134.i

csroa.if.end134.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end139.i
  %.phi135.i = phi i64 [ %.phi140.i, %csroa.if.end139.i ], [ -8727373545472, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end129.i

csroa.if.end129.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end134.i
  %.phi130.i = phi i64 [ %.phi135.i, %csroa.if.end134.i ], [ -10307921510400, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end124.i

csroa.if.end124.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end129.i
  %.phi125.i = phi i64 [ %.phi130.i, %csroa.if.end129.i ], [ -11922829213696, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end119.i

csroa.if.end119.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end124.i
  %.phi120.i = phi i64 [ %.phi125.i, %csroa.if.end124.i ], [ -13606456393728, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end114.i

csroa.if.end114.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end119.i
  %.phi115.i = phi i64 [ %.phi120.i, %csroa.if.end119.i ], [ -15358803050496, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end109.i

csroa.if.end109.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end114.i
  %.phi110.i = phi i64 [ %.phi115.i, %csroa.if.end114.i ], [ -17214228922368, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end104.i

csroa.if.end104.i:                                ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end109.i
  %.phi105.i = phi i64 [ %.phi110.i, %csroa.if.end109.i ], [ -19172734009344, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end99.i

csroa.if.end99.i:                                 ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end104.i
  %.phi100.i = phi i64 [ %.phi105.i, %csroa.if.end104.i ], [ -21234318311424, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end94.i

csroa.if.end94.i:                                 ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end99.i
  %.phi95.i = phi i64 [ %.phi100.i, %csroa.if.end99.i ], [ -23433341566976, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end89.i

csroa.if.end89.i:                                 ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end94.i
  %.phi90.i = phi i64 [ %.phi95.i, %csroa.if.end94.i ], [ -25769803776000, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end84.i

csroa.if.end84.i:                                 ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end89.i
  %.phi85.i = phi i64 [ %.phi90.i, %csroa.if.end89.i ], [ -28243704938496, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end79.i

csroa.if.end79.i:                                 ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end84.i
  %.phi80.i = phi i64 [ %.phi85.i, %csroa.if.end84.i ], [ -30889404792832, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end74.i49

csroa.if.end74.i49:                               ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end79.i
  %.phi75.i = phi i64 [ %.phi80.i, %csroa.if.end79.i ], [ -33741263077376, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end69.i51

csroa.if.end69.i51:                               ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end74.i49
  %.phi70.i50 = phi i64 [ %.phi75.i, %csroa.if.end74.i49 ], [ -36833639530496, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end64.i53

csroa.if.end64.i53:                               ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end69.i51
  %.phi65.i52 = phi i64 [ %.phi70.i50, %csroa.if.end69.i51 ], [ -40200893890560, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end59.i55

csroa.if.end59.i55:                               ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end64.i53
  %.phi60.i54 = phi i64 [ %.phi65.i52, %csroa.if.end64.i53 ], [ -43946105372672, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end54.i57

csroa.if.end54.i57:                               ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end59.i55
  %.phi55.i56 = phi i64 [ %.phi60.i54, %csroa.if.end59.i55 ], [ -48069273976832, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end49.i59

csroa.if.end49.i59:                               ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end54.i57
  %.phi50.i58 = phi i64 [ %.phi55.i56, %csroa.if.end54.i57 ], [ -52742198394880, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end44.i61

csroa.if.end44.i61:                               ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end49.i59
  %.phi45.i60 = phi i64 [ %.phi50.i58, %csroa.if.end49.i59 ], [ -58033598103552, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end39.i63

csroa.if.end39.i63:                               ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end44.i61
  %.phi40.i62 = phi i64 [ %.phi45.i60, %csroa.if.end44.i61 ], [ -64355789963264, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end34.i65

csroa.if.end34.i65:                               ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end39.i63
  %.phi35.i64 = phi i64 [ %.phi40.i62, %csroa.if.end39.i63 ], [ -71743133712384, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end29.i67

csroa.if.end29.i67:                               ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end34.i65
  %.phi30.i66 = phi i64 [ %.phi35.i64, %csroa.if.end34.i65 ], [ -81638738362368, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end24.i69

csroa.if.end24.i69:                               ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end29.i67
  %.phi25.i68 = phi i64 [ %.phi30.i66, %csroa.if.end29.i67 ], [ -94076963651584, %__non_const_wrapper__.34.exit ]
  br label %csroa.if.end19.i71

csroa.if.end19.i71:                               ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end24.i69
  %.phi20.i70 = phi i64 [ %.phi25.i68, %csroa.if.end24.i69 ], [ -106549548679168, %__non_const_wrapper__.34.exit ]
  br label %__non_const_wrapper__.35.exit

__non_const_wrapper__.35.exit:                    ; preds = %__non_const_wrapper__.34.exit, %csroa.if.end19.i71, %__non_const_wrapper__.34.exit, %__non_const_wrapper__.34.exit, %__non_const_wrapper__.34.exit
  %.phi.i78 = phi i64 [ -584115552256, %__non_const_wrapper__.34.exit ], [ -584115552256, %__non_const_wrapper__.34.exit ], [ -584115552256, %__non_const_wrapper__.34.exit ], [ %.phi20.i70, %csroa.if.end19.i71 ], [ -584115552256, %__non_const_wrapper__.34.exit ]
  %conv9 = ashr exact i64 %.phi.i78, 32
  %mul10 = mul nsw i64 %conv9, %conv
  %shr112 = lshr i64 %mul10, 15
  %conv12 = trunc i64 %shr112 to i32
  store i32 %conv12, i32* @dl, align 4
  %add13 = add nsw i32 %conv12, %add
  store i32 %add13, i32* @rl, align 4
  %6 = load i32, i32* @dec_nbl, align 4
  %call14.c.c = tail call i32 @logscl.v0.C.c.c(i32 %and, i32 %6)
  store i32 %call14.c.c, i32* @dec_nbl, align 4
  %call15.c.c = tail call i32 @scalel.v0.C.c.c(i32 %call14.c.c, i32 8)
  store i32 %call15.c.c, i32* @dec_detl, align 4
  %add16 = add nsw i32 %call.c.c, %conv5
  store i32 %add16, i32* @dec_plt, align 4
  tail call void @upzero.v0.C.c.c(i32 %conv5, i32* nonnull @dec_del_dltx.0, i32* nonnull @dec_del_dltx.1, i32* nonnull @dec_del_dltx.2, i32* nonnull @dec_del_dltx.3, i32* nonnull @dec_del_dltx.4, i32* nonnull @dec_del_dltx.5, i32* nonnull @dec_del_bpl.0, i32* nonnull @dec_del_bpl.1, i32* nonnull @dec_del_bpl.2, i32* nonnull @dec_del_bpl.3, i32* nonnull @dec_del_bpl.4, i32* nonnull @dec_del_bpl.5)
  %7 = load i32, i32* @dec_al1, align 4
  %8 = load i32, i32* @dec_al2, align 4
  %9 = load i32, i32* @dec_plt, align 4
  %10 = load i32, i32* @dec_plt1, align 4
  %11 = load i32, i32* @dec_plt2, align 4
  %call17.c.c = tail call i32 @uppol2.v0.C.c.c(i32 %7, i32 %8, i32 %9, i32 %10, i32 %11)
  store i32 %call17.c.c, i32* @dec_al2, align 4
  %call18.c.c = tail call i32 @uppol1.v0.C.c.c(i32 %7, i32 %call17.c.c, i32 %9, i32 %10)
  store i32 %call18.c.c, i32* @dec_al1, align 4
  %12 = load i32, i32* @dec_sl, align 4
  %13 = load i32, i32* @dec_dlt, align 4
  %add19 = add nsw i32 %13, %12
  store i32 %add19, i32* @dec_rlt, align 4
  %14 = load i32, i32* @dec_rlt1, align 4
  store i32 %14, i32* @dec_rlt2, align 4
  store i32 %add19, i32* @dec_rlt1, align 4
  store i32 %10, i32* @dec_plt2, align 4
  store i32 %9, i32* @dec_plt1, align 4
  %call20.c.load.12 = load i32, i32* @dec_del_bph.0, align 16
  %call20.c.load.121049 = load i32, i32* @dec_del_bph.1, align 16
  %call20.c.load.121050 = load i32, i32* @dec_del_bph.2, align 16
  %call20.c.load.121051 = load i32, i32* @dec_del_bph.3, align 16
  %call20.c.load.121052 = load i32, i32* @dec_del_bph.4, align 16
  %call20.c.load.121053 = load i32, i32* @dec_del_bph.5, align 16
  %call20.c.load.121054 = load i32, i32* @dec_del_dhx.0, align 16
  %call20.c.load.121055 = load i32, i32* @dec_del_dhx.1, align 16
  %call20.c.load.121056 = load i32, i32* @dec_del_dhx.2, align 16
  %call20.c.load.121057 = load i32, i32* @dec_del_dhx.3, align 16
  %call20.c.load.121058 = load i32, i32* @dec_del_dhx.4, align 16
  %call20.c.load.121059 = load i32, i32* @dec_del_dhx.5, align 16
  %call20.c.c = tail call i32 @filtez.v0.C.c.c(i32 %call20.c.load.12, i32 %call20.c.load.121049, i32 %call20.c.load.121050, i32 %call20.c.load.121051, i32 %call20.c.load.121052, i32 %call20.c.load.121053, i32 %call20.c.load.121054, i32 %call20.c.load.121055, i32 %call20.c.load.121056, i32 %call20.c.load.121057, i32 %call20.c.load.121058, i32 %call20.c.load.121059)
  store i32 %call20.c.c, i32* @dec_szh, align 4
  %15 = load i32, i32* @dec_rh1, align 4
  %16 = load i32, i32* @dec_ah1, align 4
  %17 = load i32, i32* @dec_rh2, align 4
  %18 = load i32, i32* @dec_ah2, align 4
  %call21.c.c = tail call i32 @filtep.v0.C.c.c(i32 %15, i32 %16, i32 %17, i32 %18)
  store i32 %call21.c.c, i32* @dec_sph, align 4
  %add22 = add nsw i32 %call20.c.c, %call21.c.c
  store i32 %add22, i32* @dec_sh, align 4
  %19 = load i32, i32* @dec_deth, align 4
  %conv23 = sext i32 %19 to i64
  %20 = load i32, i32* @ih, align 4
  switch i32 %20, label %csroa.if.end14.i92 [
    i32 0, label %__non_const_wrapper__.36.exit
    i32 1, label %csroa.if.end4.i96
    i32 2, label %csroa.if.end9.i94
  ]

csroa.if.end14.i92:                               ; preds = %__non_const_wrapper__.35.exit
  br label %csroa.if.end9.i94

csroa.if.end9.i94:                                ; preds = %__non_const_wrapper__.35.exit, %csroa.if.end14.i92
  %.phi10.i93 = phi i64 [ 1616, %csroa.if.end14.i92 ], [ 7408, %__non_const_wrapper__.35.exit ]
  br label %csroa.if.end4.i96

csroa.if.end4.i96:                                ; preds = %__non_const_wrapper__.35.exit, %csroa.if.end9.i94
  %.phi5.i95 = phi i64 [ %.phi10.i93, %csroa.if.end9.i94 ], [ -1616, %__non_const_wrapper__.35.exit ]
  br label %__non_const_wrapper__.36.exit

__non_const_wrapper__.36.exit:                    ; preds = %__non_const_wrapper__.35.exit, %csroa.if.end4.i96
  %.phi.i97 = phi i64 [ %.phi5.i95, %csroa.if.end4.i96 ], [ -7408, %__non_const_wrapper__.35.exit ]
  %mul27 = mul nsw i64 %.phi.i97, %conv23
  %shr283 = lshr i64 %mul27, 15
  %conv29 = trunc i64 %shr283 to i32
  store i32 %conv29, i32* @dec_dh, align 4
  %21 = load i32, i32* @dec_nbh, align 4
  %call30.c.c = tail call i32 @logsch.v0.C.c.c(i32 %20, i32 %21)
  store i32 %call30.c.c, i32* @dec_nbh, align 4
  %call31.c.c = tail call i32 @scalel.v0.C.c.c(i32 %call30.c.c, i32 10)
  store i32 %call31.c.c, i32* @dec_deth, align 4
  %add32 = add nsw i32 %call20.c.c, %conv29
  store i32 %add32, i32* @dec_ph, align 4
  tail call void @upzero.v0.C.c.c(i32 %conv29, i32* nonnull @dec_del_dhx.0, i32* nonnull @dec_del_dhx.1, i32* nonnull @dec_del_dhx.2, i32* nonnull @dec_del_dhx.3, i32* nonnull @dec_del_dhx.4, i32* nonnull @dec_del_dhx.5, i32* nonnull @dec_del_bph.0, i32* nonnull @dec_del_bph.1, i32* nonnull @dec_del_bph.2, i32* nonnull @dec_del_bph.3, i32* nonnull @dec_del_bph.4, i32* nonnull @dec_del_bph.5)
  %22 = load i32, i32* @dec_ah1, align 4
  %23 = load i32, i32* @dec_ah2, align 4
  %24 = load i32, i32* @dec_ph, align 4
  %25 = load i32, i32* @dec_ph1, align 4
  %26 = load i32, i32* @dec_ph2, align 4
  %call33.c.c = tail call i32 @uppol2.v0.C.c.c(i32 %22, i32 %23, i32 %24, i32 %25, i32 %26)
  store i32 %call33.c.c, i32* @dec_ah2, align 4
  %call34.c.c = tail call i32 @uppol1.v0.C.c.c(i32 %22, i32 %call33.c.c, i32 %24, i32 %25)
  store i32 %call34.c.c, i32* @dec_ah1, align 4
  %27 = load i32, i32* @dec_sh, align 4
  %28 = load i32, i32* @dec_dh, align 4
  %add35 = add nsw i32 %28, %27
  store i32 %add35, i32* @rh, align 4
  %29 = load i32, i32* @dec_rh1, align 4
  store i32 %29, i32* @dec_rh2, align 4
  store i32 %add35, i32* @dec_rh1, align 4
  store i32 %25, i32* @dec_ph2, align 4
  store i32 %24, i32* @dec_ph1, align 4
  %30 = load i32, i32* @rl, align 4
  %sub = sub nsw i32 %30, %add35
  store i32 %sub, i32* @xd, align 4
  %add36 = add nsw i32 %add35, %30
  store i32 %add36, i32* @xs, align 4
  %conv37 = sext i32 %sub to i64
  %mul39 = mul nsw i64 %conv37, 12
  %conv40 = sext i32 %add36 to i64
  %mul43 = mul nsw i64 %conv40, -44
  %31 = load i32, i32* @accumd.0, align 16
  %32 = load i32, i32* @accumd.1, align 16
  %33 = load i32, i32* @accumd.2, align 16
  %34 = load i32, i32* @accumd.3, align 16
  %35 = load i32, i32* @accumd.4, align 16
  %36 = load i32, i32* @accumd.5, align 16
  %37 = load i32, i32* @accumd.6, align 16
  %38 = load i32, i32* @accumd.7, align 16
  %39 = load i32, i32* @accumd.8, align 16
  %40 = load i32, i32* @accumd.9, align 16
  %41 = load i32, i32* @accumd.10, align 16
  %42 = load i32, i32* @accumc.0, align 16
  %43 = load i32, i32* @accumc.1, align 16
  %44 = load i32, i32* @accumc.2, align 16
  %45 = load i32, i32* @accumc.3, align 16
  %46 = load i32, i32* @accumc.4, align 16
  %47 = load i32, i32* @accumc.5, align 16
  %48 = load i32, i32* @accumc.6, align 16
  %49 = load i32, i32* @accumc.7, align 16
  %50 = load i32, i32* @accumc.8, align 16
  %51 = load i32, i32* @accumc.9, align 16
  %52 = load i32, i32* @accumc.10, align 16
  br label %for.body

for.body:                                         ; preds = %__non_const_wrapper__.40.exit, %__non_const_wrapper__.36.exit
  %i.020 = phi i32 [ 0, %__non_const_wrapper__.36.exit ], [ %inc, %__non_const_wrapper__.40.exit ]
  %xa1.019 = phi i64 [ %mul39, %__non_const_wrapper__.36.exit ], [ %add50, %__non_const_wrapper__.40.exit ]
  %xa2.018 = phi i64 [ %mul43, %__non_const_wrapper__.36.exit ], [ %add56, %__non_const_wrapper__.40.exit ]
  %h_ptr.0.phi17 = phi i32 [ 0, %__non_const_wrapper__.36.exit ], [ %incdec.ptr53.add, %__non_const_wrapper__.40.exit ]
  %inc = add nuw nsw i32 %i.020, 1
  switch i32 %i.020, label %__non_const_wrapper__.37.exit [
    i32 10, label %csroa.if.then47.i129
    i32 1, label %csroa.if.then2.i102
    i32 2, label %csroa.if.then7.i105
    i32 3, label %csroa.if.then12.i108
    i32 4, label %csroa.if.then17.i111
    i32 5, label %csroa.if.then22.i114
    i32 6, label %csroa.if.then27.i117
    i32 7, label %csroa.if.then32.i120
    i32 8, label %csroa.if.then37.i123
    i32 9, label %csroa.if.then42.i126
  ]

csroa.if.then2.i102:                              ; preds = %for.body
  br label %__non_const_wrapper__.37.exit

csroa.if.then7.i105:                              ; preds = %for.body
  br label %__non_const_wrapper__.37.exit

csroa.if.then12.i108:                             ; preds = %for.body
  br label %__non_const_wrapper__.37.exit

csroa.if.then17.i111:                             ; preds = %for.body
  br label %__non_const_wrapper__.37.exit

csroa.if.then22.i114:                             ; preds = %for.body
  br label %__non_const_wrapper__.37.exit

csroa.if.then27.i117:                             ; preds = %for.body
  br label %__non_const_wrapper__.37.exit

csroa.if.then32.i120:                             ; preds = %for.body
  br label %__non_const_wrapper__.37.exit

csroa.if.then37.i123:                             ; preds = %for.body
  br label %__non_const_wrapper__.37.exit

csroa.if.then42.i126:                             ; preds = %for.body
  br label %__non_const_wrapper__.37.exit

csroa.if.then47.i129:                             ; preds = %for.body
  br label %__non_const_wrapper__.37.exit

__non_const_wrapper__.37.exit:                    ; preds = %csroa.if.then2.i102, %csroa.if.then12.i108, %csroa.if.then22.i114, %csroa.if.then32.i120, %csroa.if.then42.i126, %for.body, %csroa.if.then47.i129, %csroa.if.then37.i123, %csroa.if.then27.i117, %csroa.if.then17.i111, %csroa.if.then7.i105
  %.phi.i151 = phi i32 [ %43, %csroa.if.then2.i102 ], [ %44, %csroa.if.then7.i105 ], [ %45, %csroa.if.then12.i108 ], [ %46, %csroa.if.then17.i111 ], [ %47, %csroa.if.then22.i114 ], [ %48, %csroa.if.then27.i117 ], [ %49, %csroa.if.then32.i120 ], [ %50, %csroa.if.then37.i123 ], [ %51, %csroa.if.then42.i126 ], [ %52, %csroa.if.then47.i129 ], [ %42, %for.body ]
  %conv46 = sext i32 %.phi.i151 to i64
  switch i32 %h_ptr.0.phi17, label %csroa.if.end114.i225 [
    i32 -2, label %__non_const_wrapper__.38.exit
    i32 4, label %csroa.if.end24.i261
    i32 0, label %csroa.if.end4.i269
    i32 6, label %csroa.if.end34.i257
    i32 2, label %csroa.if.end14.i265
    i32 8, label %csroa.if.end44.i253
    i32 20, label %csroa.if.end104.i229
    i32 10, label %csroa.if.end54.i249
    i32 16, label %csroa.if.end84.i237
    i32 12, label %csroa.if.end64.i245
    i32 18, label %csroa.if.end94.i233
    i32 14, label %csroa.if.end74.i241
  ]

csroa.if.end114.i225:                             ; preds = %__non_const_wrapper__.37.exit
  br label %csroa.if.end104.i229

csroa.if.end104.i229:                             ; preds = %__non_const_wrapper__.37.exit, %csroa.if.end114.i225
  %.phi105.i228 = phi i64 [ 51539607552, %csroa.if.end114.i225 ], [ -188978561024, %__non_const_wrapper__.37.exit ]
  br label %csroa.if.end94.i233

csroa.if.end94.i233:                              ; preds = %csroa.if.end104.i229, %__non_const_wrapper__.37.exit
  %.phi100.i230 = phi i64 [ %.phi105.i228, %csroa.if.end104.i229 ], [ 910533066752, %__non_const_wrapper__.37.exit ]
  br label %csroa.if.end84.i237

csroa.if.end84.i237:                              ; preds = %csroa.if.end94.i233, %__non_const_wrapper__.37.exit
  %.phi90.i234 = phi i64 [ %.phi100.i230, %csroa.if.end94.i233 ], [ -2680059592704, %__non_const_wrapper__.37.exit ]
  br label %csroa.if.end74.i241

csroa.if.end74.i241:                              ; preds = %csroa.if.end84.i237, %__non_const_wrapper__.37.exit
  %.phi80.i238 = phi i64 [ %.phi90.i234, %csroa.if.end84.i237 ], [ 6219112644608, %__non_const_wrapper__.37.exit ]
  br label %csroa.if.end64.i245

csroa.if.end64.i245:                              ; preds = %csroa.if.end74.i241, %__non_const_wrapper__.37.exit
  %.phi70.i242 = phi i64 [ %.phi80.i238, %csroa.if.end74.i241 ], [ -13829794693120, %__non_const_wrapper__.37.exit ]
  br label %csroa.if.end54.i249

csroa.if.end54.i249:                              ; preds = %__non_const_wrapper__.37.exit, %csroa.if.end64.i245
  %.phi55.i248 = phi i64 [ %.phi70.i242, %csroa.if.end64.i245 ], [ 66589172957184, %__non_const_wrapper__.37.exit ]
  br label %csroa.if.end44.i253

csroa.if.end44.i253:                              ; preds = %__non_const_wrapper__.37.exit, %csroa.if.end54.i249
  %.phi45.i252 = phi i64 [ %.phi55.i248, %csroa.if.end54.i249 ], [ 16338055593984, %__non_const_wrapper__.37.exit ]
  br label %csroa.if.end34.i257

csroa.if.end34.i257:                              ; preds = %csroa.if.end44.i253, %__non_const_wrapper__.37.exit
  %.phi40.i254 = phi i64 [ %.phi45.i252, %csroa.if.end44.i253 ], [ -3607772528640, %__non_const_wrapper__.37.exit ]
  br label %csroa.if.end24.i261

csroa.if.end24.i261:                              ; preds = %csroa.if.end34.i257, %__non_const_wrapper__.37.exit
  %.phi30.i258 = phi i64 [ %.phi40.i254, %csroa.if.end34.i257 ], [ 549755813888, %__non_const_wrapper__.37.exit ]
  br label %csroa.if.end14.i265

csroa.if.end14.i265:                              ; preds = %csroa.if.end24.i261, %__non_const_wrapper__.37.exit
  %.phi20.i262 = phi i64 [ %.phi30.i258, %csroa.if.end24.i261 ], [ 206158430208, %__non_const_wrapper__.37.exit ]
  br label %csroa.if.end4.i269

csroa.if.end4.i269:                               ; preds = %__non_const_wrapper__.37.exit, %csroa.if.end14.i265
  %.phi5.i268 = phi i64 [ %.phi20.i262, %csroa.if.end14.i265 ], [ -188978561024, %__non_const_wrapper__.37.exit ]
  br label %__non_const_wrapper__.38.exit

__non_const_wrapper__.38.exit:                    ; preds = %__non_const_wrapper__.37.exit, %csroa.if.end4.i269
  %.phi.i270 = phi i64 [ %.phi5.i268, %csroa.if.end4.i269 ], [ 51539607552, %__non_const_wrapper__.37.exit ]
  %conv48 = ashr exact i64 %.phi.i270, 32
  %mul49 = mul nsw i64 %conv48, %conv46
  %add50 = add nsw i64 %mul49, %xa1.019
  switch i32 %i.020, label %__non_const_wrapper__.39.exit [
    i32 10, label %csroa.if.then47.i302
    i32 1, label %csroa.if.then2.i275
    i32 2, label %csroa.if.then7.i278
    i32 3, label %csroa.if.then12.i281
    i32 4, label %csroa.if.then17.i284
    i32 5, label %csroa.if.then22.i287
    i32 6, label %csroa.if.then27.i290
    i32 7, label %csroa.if.then32.i293
    i32 8, label %csroa.if.then37.i296
    i32 9, label %csroa.if.then42.i299
  ]

csroa.if.then2.i275:                              ; preds = %__non_const_wrapper__.38.exit
  br label %__non_const_wrapper__.39.exit

csroa.if.then7.i278:                              ; preds = %__non_const_wrapper__.38.exit
  br label %__non_const_wrapper__.39.exit

csroa.if.then12.i281:                             ; preds = %__non_const_wrapper__.38.exit
  br label %__non_const_wrapper__.39.exit

csroa.if.then17.i284:                             ; preds = %__non_const_wrapper__.38.exit
  br label %__non_const_wrapper__.39.exit

csroa.if.then22.i287:                             ; preds = %__non_const_wrapper__.38.exit
  br label %__non_const_wrapper__.39.exit

csroa.if.then27.i290:                             ; preds = %__non_const_wrapper__.38.exit
  br label %__non_const_wrapper__.39.exit

csroa.if.then32.i293:                             ; preds = %__non_const_wrapper__.38.exit
  br label %__non_const_wrapper__.39.exit

csroa.if.then37.i296:                             ; preds = %__non_const_wrapper__.38.exit
  br label %__non_const_wrapper__.39.exit

csroa.if.then42.i299:                             ; preds = %__non_const_wrapper__.38.exit
  br label %__non_const_wrapper__.39.exit

csroa.if.then47.i302:                             ; preds = %__non_const_wrapper__.38.exit
  br label %__non_const_wrapper__.39.exit

__non_const_wrapper__.39.exit:                    ; preds = %csroa.if.then2.i275, %csroa.if.then12.i281, %csroa.if.then22.i287, %csroa.if.then32.i293, %csroa.if.then42.i299, %__non_const_wrapper__.38.exit, %csroa.if.then47.i302, %csroa.if.then37.i296, %csroa.if.then27.i290, %csroa.if.then17.i284, %csroa.if.then7.i278
  %.phi.i324 = phi i32 [ %32, %csroa.if.then2.i275 ], [ %33, %csroa.if.then7.i278 ], [ %34, %csroa.if.then12.i281 ], [ %35, %csroa.if.then17.i284 ], [ %36, %csroa.if.then22.i287 ], [ %37, %csroa.if.then27.i290 ], [ %38, %csroa.if.then32.i293 ], [ %39, %csroa.if.then37.i296 ], [ %40, %csroa.if.then42.i299 ], [ %41, %csroa.if.then47.i302 ], [ %31, %__non_const_wrapper__.38.exit ]
  %conv52 = sext i32 %.phi.i324 to i64
  %incdec.ptr53.add = add nuw nsw i32 %h_ptr.0.phi17, 2
  switch i32 %h_ptr.0.phi17, label %csroa.if.end114.i398 [
    i32 6, label %csroa.if.end39.i428
    i32 -2, label %__non_const_wrapper__.40.exit
    i32 2, label %csroa.if.end19.i436
    i32 0, label %csroa.if.end14.i438
    i32 4, label %csroa.if.end29.i432
    i32 16, label %csroa.if.end89.i408
    i32 8, label %csroa.if.end54.i422
    i32 18, label %csroa.if.end99.i404
    i32 10, label %csroa.if.end64.i418
    i32 14, label %csroa.if.end79.i412
    i32 12, label %csroa.if.end69.i416
  ]

csroa.if.end114.i398:                             ; preds = %__non_const_wrapper__.39.exit
  br label %csroa.if.end99.i404

csroa.if.end99.i404:                              ; preds = %csroa.if.end114.i398, %__non_const_wrapper__.39.exit
  %.phi105.i401 = phi i64 [ 51539607552, %csroa.if.end114.i398 ], [ -188978561024, %__non_const_wrapper__.39.exit ]
  br label %csroa.if.end89.i408

csroa.if.end89.i408:                              ; preds = %csroa.if.end99.i404, %__non_const_wrapper__.39.exit
  %.phi95.i405 = phi i64 [ %.phi105.i401, %csroa.if.end99.i404 ], [ 206158430208, %__non_const_wrapper__.39.exit ]
  br label %csroa.if.end79.i412

csroa.if.end79.i412:                              ; preds = %csroa.if.end89.i408, %__non_const_wrapper__.39.exit
  %.phi85.i409 = phi i64 [ %.phi95.i405, %csroa.if.end89.i408 ], [ 549755813888, %__non_const_wrapper__.39.exit ]
  br label %csroa.if.end69.i416

csroa.if.end69.i416:                              ; preds = %csroa.if.end79.i412, %__non_const_wrapper__.39.exit
  %.phi75.i413 = phi i64 [ %.phi85.i409, %csroa.if.end79.i412 ], [ -3607772528640, %__non_const_wrapper__.39.exit ]
  br label %csroa.if.end64.i418

csroa.if.end64.i418:                              ; preds = %__non_const_wrapper__.39.exit, %csroa.if.end69.i416
  %.phi65.i417 = phi i64 [ %.phi75.i413, %csroa.if.end69.i416 ], [ 16338055593984, %__non_const_wrapper__.39.exit ]
  br label %csroa.if.end54.i422

csroa.if.end54.i422:                              ; preds = %__non_const_wrapper__.39.exit, %csroa.if.end64.i418
  %.phi55.i421 = phi i64 [ %.phi65.i417, %csroa.if.end64.i418 ], [ 66589172957184, %__non_const_wrapper__.39.exit ]
  br label %csroa.if.end39.i428

csroa.if.end39.i428:                              ; preds = %csroa.if.end54.i422, %__non_const_wrapper__.39.exit
  %.phi45.i425 = phi i64 [ -13829794693120, %__non_const_wrapper__.39.exit ], [ %.phi55.i421, %csroa.if.end54.i422 ]
  br label %csroa.if.end29.i432

csroa.if.end29.i432:                              ; preds = %csroa.if.end39.i428, %__non_const_wrapper__.39.exit
  %.phi35.i429 = phi i64 [ %.phi45.i425, %csroa.if.end39.i428 ], [ 6219112644608, %__non_const_wrapper__.39.exit ]
  br label %csroa.if.end19.i436

csroa.if.end19.i436:                              ; preds = %csroa.if.end29.i432, %__non_const_wrapper__.39.exit
  %.phi25.i433 = phi i64 [ %.phi35.i429, %csroa.if.end29.i432 ], [ -2680059592704, %__non_const_wrapper__.39.exit ]
  br label %csroa.if.end14.i438

csroa.if.end14.i438:                              ; preds = %__non_const_wrapper__.39.exit, %csroa.if.end19.i436
  %.phi15.i437 = phi i64 [ %.phi25.i433, %csroa.if.end19.i436 ], [ 910533066752, %__non_const_wrapper__.39.exit ]
  br label %__non_const_wrapper__.40.exit

__non_const_wrapper__.40.exit:                    ; preds = %csroa.if.end14.i438, %__non_const_wrapper__.39.exit
  %.phi5.i441 = phi i64 [ %.phi15.i437, %csroa.if.end14.i438 ], [ -188978561024, %__non_const_wrapper__.39.exit ]
  %conv54 = ashr exact i64 %.phi5.i441, 32
  %mul55 = mul nsw i64 %conv54, %conv52
  %add56 = add nsw i64 %mul55, %xa2.018
  %exitcond21 = icmp eq i32 %inc, 10
  br i1 %exitcond21, label %__non_const_wrapper__.44.exit, label %for.body

__non_const_wrapper__.44.exit:                    ; preds = %__non_const_wrapper__.40.exit
  %conv57 = sext i32 %52 to i64
  %mul60 = mul nsw i64 %conv57, -44
  %add61 = add nsw i64 %mul60, %add50
  %conv62 = sext i32 %41 to i64
  %mul65 = mul nsw i64 %conv62, 12
  %add66 = add nsw i64 %mul65, %add56
  %shr674 = lshr i64 %add61, 14
  %conv68 = trunc i64 %shr674 to i32
  store i32 %conv68, i32* @xout1, align 4
  %shr695 = lshr i64 %add66, 14
  %conv70 = trunc i64 %shr695 to i32
  store i32 %conv70, i32* @xout2, align 4
  br label %for.body75

for.body75:                                       ; preds = %for.inc80, %__non_const_wrapper__.44.exit
  %ad_ptr.1.firstgepi.gepi.add14 = phi i32 [ 10, %__non_const_wrapper__.44.exit ], [ %ac_ptr1.0.firstgepi.gepi.add, %for.inc80 ]
  %ad_ptr1.0.firstgepi.gepi.add12 = phi i32 [ 9, %__non_const_wrapper__.44.exit ], [ %ad_ptr1.0.firstgepi.gepi.add, %for.inc80 ]
  %ad_ptr1.0.phi11 = phi i32 [ 0, %__non_const_wrapper__.44.exit ], [ %incdec.ptr78.add, %for.inc80 ]
  %i.110 = phi i32 [ 0, %__non_const_wrapper__.44.exit ], [ %inc81, %for.inc80 ]
  %ac_ptr1.0.firstgepi.gepi.add = add i32 %ad_ptr1.0.phi11, 9
  %incdec.ptr78.add = add nsw i32 %ad_ptr1.0.phi11, -1
  switch i32 %ad_ptr1.0.phi11, label %__non_const_wrapper__.45.exit [
    i32 -9, label %csroa.if.then.i791
    i32 -8, label %csroa.if.then2.i794
    i32 -7, label %csroa.if.then7.i797
    i32 -6, label %csroa.if.then12.i800
    i32 -5, label %csroa.if.then17.i803
    i32 -4, label %csroa.if.then22.i806
    i32 -3, label %csroa.if.then27.i809
    i32 -2, label %csroa.if.then32.i812
    i32 -1, label %csroa.if.then37.i815
    i32 0, label %csroa.if.then42.i818
    i32 1, label %csroa.if.then47.i821
  ]

csroa.if.then.i791:                               ; preds = %for.body75
  %53 = load i32, i32* @accumc.0, align 16
  br label %__non_const_wrapper__.45.exit

csroa.if.then2.i794:                              ; preds = %for.body75
  %54 = load i32, i32* @accumc.1, align 16
  br label %__non_const_wrapper__.45.exit

csroa.if.then7.i797:                              ; preds = %for.body75
  %55 = load i32, i32* @accumc.2, align 16
  br label %__non_const_wrapper__.45.exit

csroa.if.then12.i800:                             ; preds = %for.body75
  %56 = load i32, i32* @accumc.3, align 16
  br label %__non_const_wrapper__.45.exit

csroa.if.then17.i803:                             ; preds = %for.body75
  %57 = load i32, i32* @accumc.4, align 16
  br label %__non_const_wrapper__.45.exit

csroa.if.then22.i806:                             ; preds = %for.body75
  %58 = load i32, i32* @accumc.5, align 16
  br label %__non_const_wrapper__.45.exit

csroa.if.then27.i809:                             ; preds = %for.body75
  %59 = load i32, i32* @accumc.6, align 16
  br label %__non_const_wrapper__.45.exit

csroa.if.then32.i812:                             ; preds = %for.body75
  %60 = load i32, i32* @accumc.7, align 16
  br label %__non_const_wrapper__.45.exit

csroa.if.then37.i815:                             ; preds = %for.body75
  %61 = load i32, i32* @accumc.8, align 16
  br label %__non_const_wrapper__.45.exit

csroa.if.then42.i818:                             ; preds = %for.body75
  %62 = load i32, i32* @accumc.9, align 16
  br label %__non_const_wrapper__.45.exit

csroa.if.then47.i821:                             ; preds = %for.body75
  %63 = load i32, i32* @accumc.10, align 16
  br label %__non_const_wrapper__.45.exit

__non_const_wrapper__.45.exit:                    ; preds = %csroa.if.then2.i794, %csroa.if.then12.i800, %csroa.if.then22.i806, %csroa.if.then32.i812, %csroa.if.then42.i818, %for.body75, %csroa.if.then47.i821, %csroa.if.then37.i815, %csroa.if.then27.i809, %csroa.if.then17.i803, %csroa.if.then7.i797, %csroa.if.then.i791
  %.phi.i843 = phi i32 [ %53, %csroa.if.then.i791 ], [ %54, %csroa.if.then2.i794 ], [ %55, %csroa.if.then7.i797 ], [ %56, %csroa.if.then12.i800 ], [ %57, %csroa.if.then17.i803 ], [ %58, %csroa.if.then22.i806 ], [ %59, %csroa.if.then27.i809 ], [ %60, %csroa.if.then32.i812 ], [ %61, %csroa.if.then37.i815 ], [ %62, %csroa.if.then42.i818 ], [ %63, %csroa.if.then47.i821 ], [ undef, %for.body75 ]
  switch i32 %ad_ptr.1.firstgepi.gepi.add14, label %csroa.if.else35.i [
    i32 0, label %csroa.if.then.i845
    i32 1, label %__non_const_wrapper__.46.exit.sink.split
    i32 2, label %csroa.if.then6.i
    i32 3, label %csroa.if.then10.i
    i32 4, label %csroa.if.then14.i
    i32 5, label %csroa.if.then18.i
    i32 6, label %csroa.if.then22.i851
    i32 7, label %csroa.if.then26.i
    i32 8, label %csroa.if.then30.i
    i32 9, label %csroa.if.then34.i
  ]

csroa.if.then.i845:                               ; preds = %__non_const_wrapper__.45.exit
  br label %__non_const_wrapper__.46.exit.sink.split

csroa.if.then6.i:                                 ; preds = %__non_const_wrapper__.45.exit
  br label %__non_const_wrapper__.46.exit.sink.split

csroa.if.then10.i:                                ; preds = %__non_const_wrapper__.45.exit
  br label %__non_const_wrapper__.46.exit.sink.split

csroa.if.then14.i:                                ; preds = %__non_const_wrapper__.45.exit
  br label %__non_const_wrapper__.46.exit.sink.split

csroa.if.then18.i:                                ; preds = %__non_const_wrapper__.45.exit
  br label %__non_const_wrapper__.46.exit.sink.split

csroa.if.then22.i851:                             ; preds = %__non_const_wrapper__.45.exit
  br label %__non_const_wrapper__.46.exit.sink.split

csroa.if.then26.i:                                ; preds = %__non_const_wrapper__.45.exit
  br label %__non_const_wrapper__.46.exit.sink.split

csroa.if.then30.i:                                ; preds = %__non_const_wrapper__.45.exit
  br label %__non_const_wrapper__.46.exit.sink.split

csroa.if.then34.i:                                ; preds = %__non_const_wrapper__.45.exit
  br label %__non_const_wrapper__.46.exit.sink.split

csroa.if.else35.i:                                ; preds = %__non_const_wrapper__.45.exit
  %.cmp.037.i = icmp eq i32 %ad_ptr.1.firstgepi.gepi.add14, 10
  br i1 %.cmp.037.i, label %__non_const_wrapper__.46.exit.sink.split, label %__non_const_wrapper__.46.exit

__non_const_wrapper__.46.exit.sink.split:         ; preds = %csroa.if.else35.i, %__non_const_wrapper__.45.exit, %csroa.if.then.i845, %csroa.if.then6.i, %csroa.if.then14.i, %csroa.if.then22.i851, %csroa.if.then30.i, %csroa.if.then34.i, %csroa.if.then26.i, %csroa.if.then18.i, %csroa.if.then10.i
  %accumc.1.sink = phi i32* [ @accumc.3, %csroa.if.then10.i ], [ @accumc.5, %csroa.if.then18.i ], [ @accumc.7, %csroa.if.then26.i ], [ @accumc.9, %csroa.if.then34.i ], [ @accumc.8, %csroa.if.then30.i ], [ @accumc.6, %csroa.if.then22.i851 ], [ @accumc.4, %csroa.if.then14.i ], [ @accumc.2, %csroa.if.then6.i ], [ @accumc.0, %csroa.if.then.i845 ], [ @accumc.1, %__non_const_wrapper__.45.exit ], [ @accumc.10, %csroa.if.else35.i ]
  store i32 %.phi.i843, i32* %accumc.1.sink, align 16
  br label %__non_const_wrapper__.46.exit

__non_const_wrapper__.46.exit:                    ; preds = %__non_const_wrapper__.46.exit.sink.split, %csroa.if.else35.i
  switch i32 %ad_ptr1.0.firstgepi.gepi.add12, label %csroa.if.else43.i885 [
    i32 0, label %__non_const_wrapper__.47.exit
    i32 1, label %csroa.if.then2.i859
    i32 2, label %csroa.if.then7.i862
    i32 3, label %csroa.if.then12.i865
    i32 4, label %csroa.if.then17.i868
    i32 5, label %csroa.if.then22.i871
    i32 6, label %csroa.if.then27.i874
    i32 7, label %csroa.if.then32.i877
    i32 8, label %csroa.if.then37.i880
    i32 9, label %csroa.if.then42.i883
  ]

csroa.if.then2.i859:                              ; preds = %__non_const_wrapper__.46.exit
  br label %__non_const_wrapper__.47.exit

csroa.if.then7.i862:                              ; preds = %__non_const_wrapper__.46.exit
  br label %__non_const_wrapper__.47.exit

csroa.if.then12.i865:                             ; preds = %__non_const_wrapper__.46.exit
  br label %__non_const_wrapper__.47.exit

csroa.if.then17.i868:                             ; preds = %__non_const_wrapper__.46.exit
  br label %__non_const_wrapper__.47.exit

csroa.if.then22.i871:                             ; preds = %__non_const_wrapper__.46.exit
  br label %__non_const_wrapper__.47.exit

csroa.if.then27.i874:                             ; preds = %__non_const_wrapper__.46.exit
  br label %__non_const_wrapper__.47.exit

csroa.if.then32.i877:                             ; preds = %__non_const_wrapper__.46.exit
  br label %__non_const_wrapper__.47.exit

csroa.if.then37.i880:                             ; preds = %__non_const_wrapper__.46.exit
  br label %__non_const_wrapper__.47.exit

csroa.if.then42.i883:                             ; preds = %__non_const_wrapper__.46.exit
  br label %__non_const_wrapper__.47.exit

csroa.if.else43.i885:                             ; preds = %__non_const_wrapper__.46.exit
  br label %__non_const_wrapper__.47.exit

__non_const_wrapper__.47.exit:                    ; preds = %__non_const_wrapper__.46.exit, %csroa.if.then2.i859, %csroa.if.then12.i865, %csroa.if.then22.i871, %csroa.if.then32.i877, %csroa.if.then42.i883, %csroa.if.else43.i885, %csroa.if.then37.i880, %csroa.if.then27.i874, %csroa.if.then17.i868, %csroa.if.then7.i862
  %.phi.i908.in = phi i32* [ @accumd.1, %csroa.if.then2.i859 ], [ @accumd.2, %csroa.if.then7.i862 ], [ @accumd.3, %csroa.if.then12.i865 ], [ @accumd.4, %csroa.if.then17.i868 ], [ @accumd.5, %csroa.if.then22.i871 ], [ @accumd.6, %csroa.if.then27.i874 ], [ @accumd.7, %csroa.if.then32.i877 ], [ @accumd.8, %csroa.if.then37.i880 ], [ @accumd.9, %csroa.if.then42.i883 ], [ @accumd.10, %csroa.if.else43.i885 ], [ @accumd.0, %__non_const_wrapper__.46.exit ]
  %.phi.i908 = load i32, i32* %.phi.i908.in, align 16
  switch i32 %ad_ptr.1.firstgepi.gepi.add14, label %for.inc80 [
    i32 0, label %csroa.if.then.i910
    i32 1, label %for.inc80.sink.split
    i32 2, label %csroa.if.then6.i916
    i32 3, label %csroa.if.then10.i919
    i32 4, label %csroa.if.then14.i922
    i32 5, label %csroa.if.then18.i925
    i32 6, label %csroa.if.then22.i928
    i32 7, label %csroa.if.then26.i931
    i32 8, label %csroa.if.then30.i934
    i32 9, label %csroa.if.then34.i937
    i32 10, label %csroa.if.then38.i940
  ]

csroa.if.then.i910:                               ; preds = %__non_const_wrapper__.47.exit
  br label %for.inc80.sink.split

csroa.if.then6.i916:                              ; preds = %__non_const_wrapper__.47.exit
  br label %for.inc80.sink.split

csroa.if.then10.i919:                             ; preds = %__non_const_wrapper__.47.exit
  br label %for.inc80.sink.split

csroa.if.then14.i922:                             ; preds = %__non_const_wrapper__.47.exit
  br label %for.inc80.sink.split

csroa.if.then18.i925:                             ; preds = %__non_const_wrapper__.47.exit
  br label %for.inc80.sink.split

csroa.if.then22.i928:                             ; preds = %__non_const_wrapper__.47.exit
  br label %for.inc80.sink.split

csroa.if.then26.i931:                             ; preds = %__non_const_wrapper__.47.exit
  br label %for.inc80.sink.split

csroa.if.then30.i934:                             ; preds = %__non_const_wrapper__.47.exit
  br label %for.inc80.sink.split

csroa.if.then34.i937:                             ; preds = %__non_const_wrapper__.47.exit
  br label %for.inc80.sink.split

csroa.if.then38.i940:                             ; preds = %__non_const_wrapper__.47.exit
  br label %for.inc80.sink.split

for.inc80.sink.split:                             ; preds = %__non_const_wrapper__.47.exit, %csroa.if.then10.i919, %csroa.if.then18.i925, %csroa.if.then26.i931, %csroa.if.then34.i937, %csroa.if.then38.i940, %csroa.if.then30.i934, %csroa.if.then22.i928, %csroa.if.then14.i922, %csroa.if.then6.i916, %csroa.if.then.i910
  %accumd.0.sink = phi i32* [ @accumd.0, %csroa.if.then.i910 ], [ @accumd.2, %csroa.if.then6.i916 ], [ @accumd.4, %csroa.if.then14.i922 ], [ @accumd.6, %csroa.if.then22.i928 ], [ @accumd.8, %csroa.if.then30.i934 ], [ @accumd.10, %csroa.if.then38.i940 ], [ @accumd.9, %csroa.if.then34.i937 ], [ @accumd.7, %csroa.if.then26.i931 ], [ @accumd.5, %csroa.if.then18.i925 ], [ @accumd.3, %csroa.if.then10.i919 ], [ @accumd.1, %__non_const_wrapper__.47.exit ]
  store i32 %.phi.i908, i32* %accumd.0.sink, align 16
  br label %for.inc80

for.inc80:                                        ; preds = %__non_const_wrapper__.47.exit, %for.inc80.sink.split
  %inc81 = add nuw nsw i32 %i.110, 1
  %ad_ptr1.0.firstgepi.gepi.add = add i32 %ad_ptr1.0.phi11, 8
  %exitcond = icmp eq i32 %inc81, 10
  br i1 %exitcond, label %__non_const_wrapper__.50.exit, label %for.body75

__non_const_wrapper__.50.exit:                    ; preds = %for.inc80
  store i32 %sub, i32* @accumc.0, align 16
  store i32 %add36, i32* @accumd.0, align 16
  ret void
}

; Function Attrs: noinline norecurse nounwind readnone
define i32 @scalel.v0.C.c.c(i32 %nbl, i32 %shift_constant) local_unnamed_addr #3 {
entry:
  %shr3 = lshr i32 %nbl, 6
  %shr1 = ashr i32 %nbl, 11
  %trunc = trunc i32 %shr3 to i5
  switch i5 %trunc, label %csroa.if.end154.i [
    i5 0, label %__non_const_wrapper__.73.exit
    i5 1, label %csroa.if.end4.i
    i5 2, label %csroa.if.end9.i
    i5 3, label %csroa.if.end14.i
    i5 4, label %csroa.if.end19.i
    i5 5, label %csroa.if.end24.i
    i5 6, label %csroa.if.end29.i
    i5 7, label %csroa.if.end34.i
    i5 8, label %csroa.if.end39.i
    i5 9, label %csroa.if.end44.i
    i5 10, label %csroa.if.end49.i
    i5 11, label %csroa.if.end54.i
    i5 12, label %csroa.if.end59.i
    i5 13, label %csroa.if.end64.i
    i5 14, label %csroa.if.end69.i
    i5 15, label %csroa.if.end74.i
    i5 -16, label %csroa.if.end79.i
    i5 -15, label %csroa.if.end84.i
    i5 -14, label %csroa.if.end89.i
    i5 -13, label %csroa.if.end94.i
    i5 -12, label %csroa.if.end99.i
    i5 -11, label %csroa.if.end104.i
    i5 -10, label %csroa.if.end109.i
    i5 -9, label %csroa.if.end114.i
    i5 -8, label %csroa.if.end119.i
    i5 -7, label %csroa.if.end124.i
    i5 -6, label %csroa.if.end129.i
    i5 -5, label %csroa.if.end134.i
    i5 -4, label %csroa.if.end139.i
    i5 -3, label %csroa.if.end144.i
    i5 -2, label %csroa.if.end149.i
  ]

csroa.if.end154.i:                                ; preds = %entry
  br label %csroa.if.end149.i

csroa.if.end149.i:                                ; preds = %entry, %csroa.if.end154.i
  %.phi150.i = phi i32 [ 4008, %csroa.if.end154.i ], [ 3922, %entry ]
  br label %csroa.if.end144.i

csroa.if.end144.i:                                ; preds = %entry, %csroa.if.end149.i
  %.phi145.i = phi i32 [ %.phi150.i, %csroa.if.end149.i ], [ 3838, %entry ]
  br label %csroa.if.end139.i

csroa.if.end139.i:                                ; preds = %entry, %csroa.if.end144.i
  %.phi140.i = phi i32 [ %.phi145.i, %csroa.if.end144.i ], [ 3756, %entry ]
  br label %csroa.if.end134.i

csroa.if.end134.i:                                ; preds = %entry, %csroa.if.end139.i
  %.phi135.i = phi i32 [ %.phi140.i, %csroa.if.end139.i ], [ 3676, %entry ]
  br label %csroa.if.end129.i

csroa.if.end129.i:                                ; preds = %entry, %csroa.if.end134.i
  %.phi130.i = phi i32 [ %.phi135.i, %csroa.if.end134.i ], [ 3597, %entry ]
  br label %csroa.if.end124.i

csroa.if.end124.i:                                ; preds = %entry, %csroa.if.end129.i
  %.phi125.i = phi i32 [ %.phi130.i, %csroa.if.end129.i ], [ 3520, %entry ]
  br label %csroa.if.end119.i

csroa.if.end119.i:                                ; preds = %entry, %csroa.if.end124.i
  %.phi120.i = phi i32 [ %.phi125.i, %csroa.if.end124.i ], [ 3444, %entry ]
  br label %csroa.if.end114.i

csroa.if.end114.i:                                ; preds = %entry, %csroa.if.end119.i
  %.phi115.i = phi i32 [ %.phi120.i, %csroa.if.end119.i ], [ 3371, %entry ]
  br label %csroa.if.end109.i

csroa.if.end109.i:                                ; preds = %entry, %csroa.if.end114.i
  %.phi110.i = phi i32 [ %.phi115.i, %csroa.if.end114.i ], [ 3298, %entry ]
  br label %csroa.if.end104.i

csroa.if.end104.i:                                ; preds = %entry, %csroa.if.end109.i
  %.phi105.i = phi i32 [ %.phi110.i, %csroa.if.end109.i ], [ 3228, %entry ]
  br label %csroa.if.end99.i

csroa.if.end99.i:                                 ; preds = %entry, %csroa.if.end104.i
  %.phi100.i = phi i32 [ %.phi105.i, %csroa.if.end104.i ], [ 3158, %entry ]
  br label %csroa.if.end94.i

csroa.if.end94.i:                                 ; preds = %entry, %csroa.if.end99.i
  %.phi95.i = phi i32 [ %.phi100.i, %csroa.if.end99.i ], [ 3091, %entry ]
  br label %csroa.if.end89.i

csroa.if.end89.i:                                 ; preds = %entry, %csroa.if.end94.i
  %.phi90.i = phi i32 [ %.phi95.i, %csroa.if.end94.i ], [ 3025, %entry ]
  br label %csroa.if.end84.i

csroa.if.end84.i:                                 ; preds = %entry, %csroa.if.end89.i
  %.phi85.i = phi i32 [ %.phi90.i, %csroa.if.end89.i ], [ 2960, %entry ]
  br label %csroa.if.end79.i

csroa.if.end79.i:                                 ; preds = %entry, %csroa.if.end84.i
  %.phi80.i = phi i32 [ %.phi85.i, %csroa.if.end84.i ], [ 2896, %entry ]
  br label %csroa.if.end74.i

csroa.if.end74.i:                                 ; preds = %entry, %csroa.if.end79.i
  %.phi75.i = phi i32 [ %.phi80.i, %csroa.if.end79.i ], [ 2834, %entry ]
  br label %csroa.if.end69.i

csroa.if.end69.i:                                 ; preds = %entry, %csroa.if.end74.i
  %.phi70.i = phi i32 [ %.phi75.i, %csroa.if.end74.i ], [ 2774, %entry ]
  br label %csroa.if.end64.i

csroa.if.end64.i:                                 ; preds = %entry, %csroa.if.end69.i
  %.phi65.i = phi i32 [ %.phi70.i, %csroa.if.end69.i ], [ 2714, %entry ]
  br label %csroa.if.end59.i

csroa.if.end59.i:                                 ; preds = %entry, %csroa.if.end64.i
  %.phi60.i = phi i32 [ %.phi65.i, %csroa.if.end64.i ], [ 2656, %entry ]
  br label %csroa.if.end54.i

csroa.if.end54.i:                                 ; preds = %entry, %csroa.if.end59.i
  %.phi55.i = phi i32 [ %.phi60.i, %csroa.if.end59.i ], [ 2599, %entry ]
  br label %csroa.if.end49.i

csroa.if.end49.i:                                 ; preds = %entry, %csroa.if.end54.i
  %.phi50.i = phi i32 [ %.phi55.i, %csroa.if.end54.i ], [ 2543, %entry ]
  br label %csroa.if.end44.i

csroa.if.end44.i:                                 ; preds = %entry, %csroa.if.end49.i
  %.phi45.i = phi i32 [ %.phi50.i, %csroa.if.end49.i ], [ 2489, %entry ]
  br label %csroa.if.end39.i

csroa.if.end39.i:                                 ; preds = %entry, %csroa.if.end44.i
  %.phi40.i = phi i32 [ %.phi45.i, %csroa.if.end44.i ], [ 2435, %entry ]
  br label %csroa.if.end34.i

csroa.if.end34.i:                                 ; preds = %entry, %csroa.if.end39.i
  %.phi35.i = phi i32 [ %.phi40.i, %csroa.if.end39.i ], [ 2383, %entry ]
  br label %csroa.if.end29.i

csroa.if.end29.i:                                 ; preds = %entry, %csroa.if.end34.i
  %.phi30.i = phi i32 [ %.phi35.i, %csroa.if.end34.i ], [ 2332, %entry ]
  br label %csroa.if.end24.i

csroa.if.end24.i:                                 ; preds = %entry, %csroa.if.end29.i
  %.phi25.i = phi i32 [ %.phi30.i, %csroa.if.end29.i ], [ 2282, %entry ]
  br label %csroa.if.end19.i

csroa.if.end19.i:                                 ; preds = %entry, %csroa.if.end24.i
  %.phi20.i = phi i32 [ %.phi25.i, %csroa.if.end24.i ], [ 2233, %entry ]
  br label %csroa.if.end14.i

csroa.if.end14.i:                                 ; preds = %entry, %csroa.if.end19.i
  %.phi15.i = phi i32 [ %.phi20.i, %csroa.if.end19.i ], [ 2186, %entry ]
  br label %csroa.if.end9.i

csroa.if.end9.i:                                  ; preds = %entry, %csroa.if.end14.i
  %.phi10.i = phi i32 [ %.phi15.i, %csroa.if.end14.i ], [ 2139, %entry ]
  br label %csroa.if.end4.i

csroa.if.end4.i:                                  ; preds = %entry, %csroa.if.end9.i
  %.phi5.i = phi i32 [ %.phi10.i, %csroa.if.end9.i ], [ 2093, %entry ]
  br label %__non_const_wrapper__.73.exit

__non_const_wrapper__.73.exit:                    ; preds = %entry, %csroa.if.end4.i
  %.phi.i = phi i32 [ %.phi5.i, %csroa.if.end4.i ], [ 2048, %entry ]
  %add = add nsw i32 %shift_constant, 1
  %sub = sub i32 %add, %shr1
  %shr2 = ashr i32 %.phi.i, %sub
  %shl = shl i32 %shr2, 3
  ret i32 %shl
}

; Function Attrs: noinline norecurse nounwind
define void @upzero.v0.C.c.c(i32 %dlt, i32* nocapture %dlti.0, i32* nocapture %dlti.1, i32* nocapture %dlti.2, i32* nocapture %dlti.3, i32* nocapture %dlti.4, i32* nocapture %dlti.5, i32* nocapture %bli.0, i32* nocapture %bli.1, i32* nocapture %bli.2, i32* nocapture %bli.3, i32* nocapture %bli.4, i32* nocapture %bli.5) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq i32 %dlt, 0
  br i1 %cmp, label %for.body.preheader, label %for.cond5.preheader

for.body.preheader:                               ; preds = %entry
  br label %for.body

for.cond5.preheader:                              ; preds = %entry
  %conv9 = sext i32 %dlt to i64
  br label %for.body8

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %i.06 = phi i32 [ %inc, %for.inc ], [ 0, %for.body.preheader ]
  switch i32 %i.06, label %__non_const_wrapper__.74.exit [
    i32 0, label %csroa.if.then.i
    i32 1, label %__non_const_wrapper__.74.exit.sink.split
    i32 2, label %csroa.if.then7.i
    i32 3, label %csroa.if.then12.i
    i32 4, label %csroa.if.then17.i
    i32 5, label %csroa.if.then22.i
  ]

csroa.if.then.i:                                  ; preds = %for.body
  br label %__non_const_wrapper__.74.exit.sink.split

csroa.if.then7.i:                                 ; preds = %for.body
  br label %__non_const_wrapper__.74.exit.sink.split

csroa.if.then12.i:                                ; preds = %for.body
  br label %__non_const_wrapper__.74.exit.sink.split

csroa.if.then17.i:                                ; preds = %for.body
  br label %__non_const_wrapper__.74.exit.sink.split

csroa.if.then22.i:                                ; preds = %for.body
  br label %__non_const_wrapper__.74.exit.sink.split

__non_const_wrapper__.74.exit.sink.split:         ; preds = %for.body, %csroa.if.then.i, %csroa.if.then7.i, %csroa.if.then17.i, %csroa.if.then22.i, %csroa.if.then12.i
  %bli.1.sink = phi i32* [ %bli.3, %csroa.if.then12.i ], [ %bli.5, %csroa.if.then22.i ], [ %bli.4, %csroa.if.then17.i ], [ %bli.2, %csroa.if.then7.i ], [ %bli.0, %csroa.if.then.i ], [ %bli.1, %for.body ]
  %0 = load i32, i32* %bli.1.sink, align 4
  br label %__non_const_wrapper__.74.exit

__non_const_wrapper__.74.exit:                    ; preds = %__non_const_wrapper__.74.exit.sink.split, %for.body
  %.phi.i = phi i32 [ undef, %for.body ], [ %0, %__non_const_wrapper__.74.exit.sink.split ]
  %conv = sext i32 %.phi.i to i64
  %mul = mul nsw i64 %conv, 255
  %shr2 = lshr i64 %mul, 8
  %conv2 = trunc i64 %shr2 to i32
  switch i32 %i.06, label %for.inc [
    i32 0, label %csroa.if.then.i2
    i32 1, label %for.inc.sink.split
    i32 2, label %csroa.if.then6.i
    i32 3, label %csroa.if.then10.i
    i32 4, label %csroa.if.then14.i
    i32 5, label %csroa.if.then18.i
  ]

csroa.if.then.i2:                                 ; preds = %__non_const_wrapper__.74.exit
  br label %for.inc.sink.split

csroa.if.then6.i:                                 ; preds = %__non_const_wrapper__.74.exit
  br label %for.inc.sink.split

csroa.if.then10.i:                                ; preds = %__non_const_wrapper__.74.exit
  br label %for.inc.sink.split

csroa.if.then14.i:                                ; preds = %__non_const_wrapper__.74.exit
  br label %for.inc.sink.split

csroa.if.then18.i:                                ; preds = %__non_const_wrapper__.74.exit
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %__non_const_wrapper__.74.exit, %csroa.if.then10.i, %csroa.if.then18.i, %csroa.if.then14.i, %csroa.if.then6.i, %csroa.if.then.i2
  %bli.0.sink = phi i32* [ %bli.0, %csroa.if.then.i2 ], [ %bli.2, %csroa.if.then6.i ], [ %bli.4, %csroa.if.then14.i ], [ %bli.5, %csroa.if.then18.i ], [ %bli.3, %csroa.if.then10.i ], [ %bli.1, %__non_const_wrapper__.74.exit ]
  store i32 %conv2, i32* %bli.0.sink, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %__non_const_wrapper__.74.exit
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond = icmp eq i32 %inc, 6
  br i1 %exitcond, label %if.end29.loopexit, label %for.body

for.body8:                                        ; preds = %for.inc26, %for.cond5.preheader
  %i.17 = phi i32 [ 0, %for.cond5.preheader ], [ %inc27, %for.inc26 ]
  switch i32 %i.17, label %__non_const_wrapper__.76.exit [
    i32 0, label %csroa.if.then.i9
    i32 1, label %__non_const_wrapper__.76.exit.sink.split
    i32 2, label %csroa.if.then7.i15
    i32 3, label %csroa.if.then12.i18
    i32 4, label %csroa.if.then17.i21
    i32 5, label %csroa.if.then22.i24
  ]

csroa.if.then.i9:                                 ; preds = %for.body8
  br label %__non_const_wrapper__.76.exit.sink.split

csroa.if.then7.i15:                               ; preds = %for.body8
  br label %__non_const_wrapper__.76.exit.sink.split

csroa.if.then12.i18:                              ; preds = %for.body8
  br label %__non_const_wrapper__.76.exit.sink.split

csroa.if.then17.i21:                              ; preds = %for.body8
  br label %__non_const_wrapper__.76.exit.sink.split

csroa.if.then22.i24:                              ; preds = %for.body8
  br label %__non_const_wrapper__.76.exit.sink.split

__non_const_wrapper__.76.exit.sink.split:         ; preds = %for.body8, %csroa.if.then.i9, %csroa.if.then7.i15, %csroa.if.then17.i21, %csroa.if.then22.i24, %csroa.if.then12.i18
  %dlti.1.sink = phi i32* [ %dlti.3, %csroa.if.then12.i18 ], [ %dlti.5, %csroa.if.then22.i24 ], [ %dlti.4, %csroa.if.then17.i21 ], [ %dlti.2, %csroa.if.then7.i15 ], [ %dlti.0, %csroa.if.then.i9 ], [ %dlti.1, %for.body8 ]
  %1 = load i32, i32* %dlti.1.sink, align 4
  br label %__non_const_wrapper__.76.exit

__non_const_wrapper__.76.exit:                    ; preds = %__non_const_wrapper__.76.exit.sink.split, %for.body8
  %.phi.i36 = phi i32 [ undef, %for.body8 ], [ %1, %__non_const_wrapper__.76.exit.sink.split ]
  %conv12 = sext i32 %.phi.i36 to i64
  %mul13 = mul nsw i64 %conv12, %conv9
  %cmp14 = icmp sgt i64 %mul13, -1
  %. = select i1 %cmp14, i32 128, i32 -128
  switch i32 %i.17, label %__non_const_wrapper__.77.exit [
    i32 0, label %csroa.if.then.i38
    i32 1, label %__non_const_wrapper__.77.exit.sink.split
    i32 2, label %csroa.if.then7.i44
    i32 3, label %csroa.if.then12.i47
    i32 4, label %csroa.if.then17.i50
    i32 5, label %csroa.if.then22.i53
  ]

csroa.if.then.i38:                                ; preds = %__non_const_wrapper__.76.exit
  br label %__non_const_wrapper__.77.exit.sink.split

csroa.if.then7.i44:                               ; preds = %__non_const_wrapper__.76.exit
  br label %__non_const_wrapper__.77.exit.sink.split

csroa.if.then12.i47:                              ; preds = %__non_const_wrapper__.76.exit
  br label %__non_const_wrapper__.77.exit.sink.split

csroa.if.then17.i50:                              ; preds = %__non_const_wrapper__.76.exit
  br label %__non_const_wrapper__.77.exit.sink.split

csroa.if.then22.i53:                              ; preds = %__non_const_wrapper__.76.exit
  br label %__non_const_wrapper__.77.exit.sink.split

__non_const_wrapper__.77.exit.sink.split:         ; preds = %__non_const_wrapper__.76.exit, %csroa.if.then.i38, %csroa.if.then7.i44, %csroa.if.then17.i50, %csroa.if.then22.i53, %csroa.if.then12.i47
  %bli.1.sink3 = phi i32* [ %bli.3, %csroa.if.then12.i47 ], [ %bli.5, %csroa.if.then22.i53 ], [ %bli.4, %csroa.if.then17.i50 ], [ %bli.2, %csroa.if.then7.i44 ], [ %bli.0, %csroa.if.then.i38 ], [ %bli.1, %__non_const_wrapper__.76.exit ]
  %2 = load i32, i32* %bli.1.sink3, align 4
  br label %__non_const_wrapper__.77.exit

__non_const_wrapper__.77.exit:                    ; preds = %__non_const_wrapper__.77.exit.sink.split, %__non_const_wrapper__.76.exit
  %.phi.i65 = phi i32 [ undef, %__non_const_wrapper__.76.exit ], [ %2, %__non_const_wrapper__.77.exit.sink.split ]
  %conv20 = sext i32 %.phi.i65 to i64
  %mul21 = mul nsw i64 %conv20, 255
  %shr221 = lshr i64 %mul21, 8
  %conv23 = trunc i64 %shr221 to i32
  %add = add nsw i32 %conv23, %.
  switch i32 %i.17, label %for.inc26 [
    i32 0, label %csroa.if.then.i67
    i32 1, label %for.inc26.sink.split
    i32 2, label %csroa.if.then6.i73
    i32 3, label %csroa.if.then10.i76
    i32 4, label %csroa.if.then14.i79
    i32 5, label %csroa.if.then18.i82
  ]

csroa.if.then.i67:                                ; preds = %__non_const_wrapper__.77.exit
  br label %for.inc26.sink.split

csroa.if.then6.i73:                               ; preds = %__non_const_wrapper__.77.exit
  br label %for.inc26.sink.split

csroa.if.then10.i76:                              ; preds = %__non_const_wrapper__.77.exit
  br label %for.inc26.sink.split

csroa.if.then14.i79:                              ; preds = %__non_const_wrapper__.77.exit
  br label %for.inc26.sink.split

csroa.if.then18.i82:                              ; preds = %__non_const_wrapper__.77.exit
  br label %for.inc26.sink.split

for.inc26.sink.split:                             ; preds = %__non_const_wrapper__.77.exit, %csroa.if.then10.i76, %csroa.if.then18.i82, %csroa.if.then14.i79, %csroa.if.then6.i73, %csroa.if.then.i67
  %bli.0.sink4 = phi i32* [ %bli.0, %csroa.if.then.i67 ], [ %bli.2, %csroa.if.then6.i73 ], [ %bli.4, %csroa.if.then14.i79 ], [ %bli.5, %csroa.if.then18.i82 ], [ %bli.3, %csroa.if.then10.i76 ], [ %bli.1, %__non_const_wrapper__.77.exit ]
  store i32 %add, i32* %bli.0.sink4, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.inc26.sink.split, %__non_const_wrapper__.77.exit
  %inc27 = add nuw nsw i32 %i.17, 1
  %exitcond9 = icmp eq i32 %inc27, 6
  br i1 %exitcond9, label %if.end29.loopexit12, label %for.body8

if.end29.loopexit:                                ; preds = %for.inc
  br label %if.end29

if.end29.loopexit12:                              ; preds = %for.inc26
  br label %if.end29

if.end29:                                         ; preds = %if.end29.loopexit12, %if.end29.loopexit
  %3 = load i32, i32* %dlti.4, align 4
  store i32 %3, i32* %dlti.5, align 4
  %4 = load i32, i32* %dlti.3, align 4
  store i32 %4, i32* %dlti.4, align 4
  %5 = load i32, i32* %dlti.2, align 4
  store i32 %5, i32* %dlti.3, align 4
  %6 = load i32, i32* %dlti.1, align 4
  store i32 %6, i32* %dlti.2, align 4
  %7 = load i32, i32* %dlti.0, align 4
  store i32 %7, i32* %dlti.1, align 4
  store i32 %dlt, i32* %dlti.0, align 4
  ret void
}

; Function Attrs: noinline norecurse nounwind readnone
define i32 @logsch.v0.C.c.c(i32 %ih, i32 %nbh) local_unnamed_addr #3 {
entry:
  %conv = sext i32 %nbh to i64
  %mul = mul nsw i64 %conv, 127
  %shr1 = lshr i64 %mul, 7
  %conv1 = trunc i64 %shr1 to i32
  switch i32 %ih, label %csroa.if.end14.i [
    i32 0, label %__non_const_wrapper__.68.exit
    i32 1, label %csroa.if.end4.i
    i32 2, label %csroa.if.end9.i
  ]

csroa.if.end14.i:                                 ; preds = %entry
  br label %csroa.if.end9.i

csroa.if.end9.i:                                  ; preds = %entry, %csroa.if.end14.i
  %.phi10.i = phi i32 [ -214, %csroa.if.end14.i ], [ 798, %entry ]
  br label %csroa.if.end4.i

csroa.if.end4.i:                                  ; preds = %entry, %csroa.if.end9.i
  %.phi5.i = phi i32 [ %.phi10.i, %csroa.if.end9.i ], [ -214, %entry ]
  br label %__non_const_wrapper__.68.exit

__non_const_wrapper__.68.exit:                    ; preds = %entry, %csroa.if.end4.i
  %.phi.i = phi i32 [ %.phi5.i, %csroa.if.end4.i ], [ 798, %entry ]
  %add = add nsw i32 %.phi.i, %conv1
  %0 = icmp sgt i32 %add, 0
  %.add = select i1 %0, i32 %add, i32 0
  %1 = icmp slt i32 %.add, 22528
  %nbh.addr.1 = select i1 %1, i32 %.add, i32 22528
  ret i32 %nbh.addr.1
}

; Function Attrs: noinline norecurse nounwind readnone
define i32 @uppol2.v0.C.c.c(i32 %al1, i32 %al2, i32 %plt, i32 %plt1, i32 %plt2) local_unnamed_addr #3 {
entry:
  %conv = sext i32 %al1 to i64
  %mul = shl nsw i64 %conv, 2
  %conv1 = sext i32 %plt to i64
  %conv2 = sext i32 %plt1 to i64
  %mul3 = mul nsw i64 %conv2, %conv1
  %cmp = icmp sgt i64 %mul3, -1
  %sub = sub nsw i64 0, %mul
  %sub.mul = select i1 %cmp, i64 %sub, i64 %mul
  %shr2 = lshr i64 %sub.mul, 7
  %conv6 = sext i32 %plt2 to i64
  %mul7 = mul nsw i64 %conv6, %conv1
  %0 = ashr i64 %mul7, 63
  %1 = and i64 %0, 4294967040
  %2 = or i64 %1, 128
  %conv13 = sext i32 %al2 to i64
  %mul14 = mul nsw i64 %conv13, 127
  %shr151 = lshr i64 %mul14, 7
  %sub11 = add nuw nsw i64 %shr2, %shr151
  %add16 = add nuw nsw i64 %sub11, %2
  %conv17 = trunc i64 %add16 to i32
  %3 = icmp slt i32 %conv17, 12288
  %.conv17 = select i1 %3, i32 %conv17, i32 12288
  %4 = icmp sgt i32 %.conv17, -12288
  %apl2.1 = select i1 %4, i32 %.conv17, i32 -12288
  ret i32 %apl2.1
}

; Function Attrs: noinline norecurse nounwind readnone
define i32 @quantl.v0.C.c.c(i32 %el, i32 %detl) local_unnamed_addr #3 {
entry:
  %cmp.i = icmp sgt i32 %el, -1
  %sub.i = sub nsw i32 0, %el
  %m.0.i = select i1 %cmp.i, i32 %el, i32 %sub.i
  %conv = sext i32 %m.0.i to i64
  %conv3 = sext i32 %detl to i64
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %mil.01 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  switch i32 %mil.01, label %csroa.if.end144.i [
    i32 0, label %__non_const_wrapper__.69.exit
    i32 1, label %csroa.if.end4.i
    i32 2, label %csroa.if.end9.i
    i32 3, label %csroa.if.end14.i
    i32 4, label %csroa.if.end19.i
    i32 5, label %csroa.if.end24.i
    i32 6, label %csroa.if.end29.i
    i32 7, label %csroa.if.end34.i
    i32 8, label %csroa.if.end39.i
    i32 9, label %csroa.if.end44.i
    i32 10, label %csroa.if.end49.i
    i32 11, label %csroa.if.end54.i
    i32 12, label %csroa.if.end59.i
    i32 13, label %csroa.if.end64.i
    i32 14, label %csroa.if.end69.i
    i32 15, label %csroa.if.end74.i
    i32 16, label %csroa.if.end79.i
    i32 17, label %csroa.if.end84.i
    i32 18, label %csroa.if.end89.i
    i32 19, label %csroa.if.end94.i
    i32 20, label %csroa.if.end99.i
    i32 21, label %csroa.if.end104.i
    i32 22, label %csroa.if.end109.i
    i32 23, label %csroa.if.end114.i
    i32 24, label %csroa.if.end119.i
    i32 25, label %csroa.if.end124.i
    i32 26, label %csroa.if.end129.i
    i32 27, label %csroa.if.end134.i
    i32 28, label %csroa.if.end139.i
  ]

csroa.if.end144.i:                                ; preds = %for.body
  br label %csroa.if.end139.i

csroa.if.end139.i:                                ; preds = %for.body, %csroa.if.end144.i
  %.phi140.i = phi i64 [ 140733193388032, %csroa.if.end144.i ], [ 100296076296192, %for.body ]
  br label %csroa.if.end134.i

csroa.if.end134.i:                                ; preds = %for.body, %csroa.if.end139.i
  %.phi135.i = phi i64 [ %.phi140.i, %csroa.if.end139.i ], [ 87857851006976, %for.body ]
  br label %csroa.if.end129.i

csroa.if.end129.i:                                ; preds = %for.body, %csroa.if.end134.i
  %.phi130.i = phi i64 [ %.phi135.i, %csroa.if.end134.i ], [ 75419625717760, %for.body ]
  br label %csroa.if.end124.i

csroa.if.end124.i:                                ; preds = %for.body, %csroa.if.end129.i
  %.phi125.i = phi i64 [ %.phi130.i, %csroa.if.end129.i ], [ 68032281968640, %for.body ]
  br label %csroa.if.end119.i

csroa.if.end119.i:                                ; preds = %for.body, %csroa.if.end124.i
  %.phi120.i = phi i64 [ %.phi125.i, %csroa.if.end124.i ], [ 60644938219520, %for.body ]
  br label %csroa.if.end114.i

csroa.if.end114.i:                                ; preds = %for.body, %csroa.if.end119.i
  %.phi115.i = phi i64 [ %.phi120.i, %csroa.if.end119.i ], [ 55387898249216, %for.body ]
  br label %csroa.if.end109.i

csroa.if.end109.i:                                ; preds = %for.body, %csroa.if.end114.i
  %.phi110.i = phi i64 [ %.phi115.i, %csroa.if.end114.i ], [ 50096498540544, %for.body ]
  br label %csroa.if.end104.i

csroa.if.end104.i:                                ; preds = %for.body, %csroa.if.end109.i
  %.phi105.i = phi i64 [ %.phi110.i, %csroa.if.end109.i ], [ 46007689674752, %for.body ]
  br label %csroa.if.end99.i

csroa.if.end99.i:                                 ; preds = %for.body, %csroa.if.end104.i
  %.phi100.i = phi i64 [ %.phi105.i, %csroa.if.end104.i ], [ 41884521070592, %for.body ]
  br label %csroa.if.end94.i

csroa.if.end94.i:                                 ; preds = %for.body, %csroa.if.end99.i
  %.phi95.i = phi i64 [ %.phi100.i, %csroa.if.end99.i ], [ 38517266710528, %for.body ]
  br label %csroa.if.end89.i

csroa.if.end89.i:                                 ; preds = %for.body, %csroa.if.end94.i
  %.phi90.i = phi i64 [ %.phi95.i, %csroa.if.end94.i ], [ 35150012350464, %for.body ]
  br label %csroa.if.end84.i

csroa.if.end84.i:                                 ; preds = %for.body, %csroa.if.end89.i
  %.phi85.i = phi i64 [ %.phi90.i, %csroa.if.end89.i ], [ 32298154065920, %for.body ]
  br label %csroa.if.end79.i

csroa.if.end79.i:                                 ; preds = %for.body, %csroa.if.end84.i
  %.phi80.i = phi i64 [ %.phi85.i, %csroa.if.end84.i ], [ 29480655519744, %for.body ]
  br label %csroa.if.end74.i

csroa.if.end74.i:                                 ; preds = %for.body, %csroa.if.end79.i
  %.phi75.i = phi i64 [ %.phi80.i, %csroa.if.end79.i ], [ 27006754357248, %for.body ]
  br label %csroa.if.end69.i

csroa.if.end69.i:                                 ; preds = %for.body, %csroa.if.end74.i
  %.phi70.i = phi i64 [ %.phi75.i, %csroa.if.end74.i ], [ 24532853194752, %for.body ]
  br label %csroa.if.end64.i

csroa.if.end64.i:                                 ; preds = %for.body, %csroa.if.end69.i
  %.phi65.i = phi i64 [ %.phi70.i, %csroa.if.end69.i ], [ 22333829939200, %for.body ]
  br label %csroa.if.end59.i

csroa.if.end59.i:                                 ; preds = %for.body, %csroa.if.end64.i
  %.phi60.i = phi i64 [ %.phi65.i, %csroa.if.end64.i ], [ 20169166422016, %for.body ]
  br label %csroa.if.end54.i

csroa.if.end54.i:                                 ; preds = %for.body, %csroa.if.end59.i
  %.phi55.i = phi i64 [ %.phi60.i, %csroa.if.end59.i ], [ 18210661335040, %for.body ]
  br label %csroa.if.end49.i

csroa.if.end49.i:                                 ; preds = %for.body, %csroa.if.end54.i
  %.phi50.i = phi i64 [ %.phi55.i, %csroa.if.end54.i ], [ 16252156248064, %for.body ]
  br label %csroa.if.end44.i

csroa.if.end44.i:                                 ; preds = %for.body, %csroa.if.end49.i
  %.phi45.i = phi i64 [ %.phi50.i, %csroa.if.end49.i ], [ 14499809591296, %for.body ]
  br label %csroa.if.end39.i

csroa.if.end39.i:                                 ; preds = %for.body, %csroa.if.end44.i
  %.phi40.i = phi i64 [ %.phi45.i, %csroa.if.end44.i ], [ 12713103196160, %for.body ]
  br label %csroa.if.end34.i

csroa.if.end34.i:                                 ; preds = %for.body, %csroa.if.end39.i
  %.phi35.i = phi i64 [ %.phi40.i, %csroa.if.end39.i ], [ 11098195492864, %for.body ]
  br label %csroa.if.end29.i

csroa.if.end29.i:                                 ; preds = %for.body, %csroa.if.end34.i
  %.phi30.i = phi i64 [ %.phi35.i, %csroa.if.end34.i ], [ 9483287789568, %for.body ]
  br label %csroa.if.end24.i

csroa.if.end24.i:                                 ; preds = %for.body, %csroa.if.end29.i
  %.phi25.i = phi i64 [ %.phi30.i, %csroa.if.end29.i ], [ 8005819039744, %for.body ]
  br label %csroa.if.end19.i

csroa.if.end19.i:                                 ; preds = %for.body, %csroa.if.end24.i
  %.phi20.i = phi i64 [ %.phi25.i, %csroa.if.end24.i ], [ 6528350289920, %for.body ]
  br label %csroa.if.end14.i

csroa.if.end14.i:                                 ; preds = %for.body, %csroa.if.end19.i
  %.phi15.i = phi i64 [ %.phi20.i, %csroa.if.end19.i ], [ 5153960755200, %for.body ]
  br label %csroa.if.end9.i

csroa.if.end9.i:                                  ; preds = %for.body, %csroa.if.end14.i
  %.phi10.i = phi i64 [ %.phi15.i, %csroa.if.end14.i ], [ 3779571220480, %for.body ]
  br label %csroa.if.end4.i

csroa.if.end4.i:                                  ; preds = %for.body, %csroa.if.end9.i
  %.phi5.i = phi i64 [ %.phi10.i, %csroa.if.end9.i ], [ 2473901162496, %for.body ]
  br label %__non_const_wrapper__.69.exit

__non_const_wrapper__.69.exit:                    ; preds = %for.body, %csroa.if.end4.i
  %.phi.i = phi i64 [ %.phi5.i, %csroa.if.end4.i ], [ 1202590842880, %for.body ]
  %conv2 = ashr exact i64 %.phi.i, 32
  %mul = mul nsw i64 %conv2, %conv3
  %shr = ashr i64 %mul, 15
  %cmp4 = icmp sgt i64 %conv, %shr
  br i1 %cmp4, label %for.inc, label %for.end

for.inc:                                          ; preds = %__non_const_wrapper__.69.exit
  %inc = add nuw nsw i32 %mil.01, 1
  %cmp = icmp slt i32 %inc, 30
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %__non_const_wrapper__.69.exit, %for.inc
  %mil.0.lcssa = phi i32 [ %mil.01, %__non_const_wrapper__.69.exit ], [ %inc, %for.inc ]
  %.cmp.0.i1 = icmp eq i32 %mil.0.lcssa, 0
  br i1 %cmp.i, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.end
  br i1 %.cmp.0.i1, label %if.end13, label %csroa.if.else.i4

csroa.if.else.i4:                                 ; preds = %if.then8
  switch i32 %mil.0.lcssa, label %csroa.if.end144.i91 [
    i32 1, label %if.end13
    i32 2, label %csroa.if.end9.i145
    i32 3, label %csroa.if.end14.i143
    i32 4, label %csroa.if.end19.i141
    i32 5, label %csroa.if.end24.i139
    i32 6, label %csroa.if.end29.i137
    i32 7, label %csroa.if.end34.i135
    i32 8, label %csroa.if.end39.i133
    i32 9, label %csroa.if.end44.i131
    i32 10, label %csroa.if.end49.i129
    i32 11, label %csroa.if.end54.i127
    i32 12, label %csroa.if.end59.i125
    i32 13, label %csroa.if.end64.i123
    i32 14, label %csroa.if.end69.i121
    i32 15, label %csroa.if.end74.i119
    i32 16, label %csroa.if.end79.i117
    i32 17, label %csroa.if.end84.i115
    i32 18, label %csroa.if.end89.i113
    i32 19, label %csroa.if.end94.i111
    i32 20, label %csroa.if.end99.i109
    i32 21, label %csroa.if.end104.i107
    i32 22, label %csroa.if.end109.i105
    i32 23, label %csroa.if.end114.i103
    i32 24, label %csroa.if.end119.i101
    i32 25, label %csroa.if.end124.i99
    i32 26, label %csroa.if.end129.i97
    i32 27, label %csroa.if.end134.i95
    i32 28, label %csroa.if.end139.i93
  ]

csroa.if.end144.i91:                              ; preds = %csroa.if.else.i4
  br label %csroa.if.end139.i93

csroa.if.end139.i93:                              ; preds = %csroa.if.else.i4, %csroa.if.end144.i91
  %.phi140.i92 = phi i32 [ 32, %csroa.if.end144.i91 ], [ 33, %csroa.if.else.i4 ]
  br label %csroa.if.end134.i95

csroa.if.end134.i95:                              ; preds = %csroa.if.else.i4, %csroa.if.end139.i93
  %.phi135.i94 = phi i32 [ %.phi140.i92, %csroa.if.end139.i93 ], [ 34, %csroa.if.else.i4 ]
  br label %csroa.if.end129.i97

csroa.if.end129.i97:                              ; preds = %csroa.if.else.i4, %csroa.if.end134.i95
  %.phi130.i96 = phi i32 [ %.phi135.i94, %csroa.if.end134.i95 ], [ 35, %csroa.if.else.i4 ]
  br label %csroa.if.end124.i99

csroa.if.end124.i99:                              ; preds = %csroa.if.else.i4, %csroa.if.end129.i97
  %.phi125.i98 = phi i32 [ %.phi130.i96, %csroa.if.end129.i97 ], [ 36, %csroa.if.else.i4 ]
  br label %csroa.if.end119.i101

csroa.if.end119.i101:                             ; preds = %csroa.if.else.i4, %csroa.if.end124.i99
  %.phi120.i100 = phi i32 [ %.phi125.i98, %csroa.if.end124.i99 ], [ 37, %csroa.if.else.i4 ]
  br label %csroa.if.end114.i103

csroa.if.end114.i103:                             ; preds = %csroa.if.else.i4, %csroa.if.end119.i101
  %.phi115.i102 = phi i32 [ %.phi120.i100, %csroa.if.end119.i101 ], [ 38, %csroa.if.else.i4 ]
  br label %csroa.if.end109.i105

csroa.if.end109.i105:                             ; preds = %csroa.if.else.i4, %csroa.if.end114.i103
  %.phi110.i104 = phi i32 [ %.phi115.i102, %csroa.if.end114.i103 ], [ 39, %csroa.if.else.i4 ]
  br label %csroa.if.end104.i107

csroa.if.end104.i107:                             ; preds = %csroa.if.else.i4, %csroa.if.end109.i105
  %.phi105.i106 = phi i32 [ %.phi110.i104, %csroa.if.end109.i105 ], [ 40, %csroa.if.else.i4 ]
  br label %csroa.if.end99.i109

csroa.if.end99.i109:                              ; preds = %csroa.if.else.i4, %csroa.if.end104.i107
  %.phi100.i108 = phi i32 [ %.phi105.i106, %csroa.if.end104.i107 ], [ 41, %csroa.if.else.i4 ]
  br label %csroa.if.end94.i111

csroa.if.end94.i111:                              ; preds = %csroa.if.else.i4, %csroa.if.end99.i109
  %.phi95.i110 = phi i32 [ %.phi100.i108, %csroa.if.end99.i109 ], [ 42, %csroa.if.else.i4 ]
  br label %csroa.if.end89.i113

csroa.if.end89.i113:                              ; preds = %csroa.if.else.i4, %csroa.if.end94.i111
  %.phi90.i112 = phi i32 [ %.phi95.i110, %csroa.if.end94.i111 ], [ 43, %csroa.if.else.i4 ]
  br label %csroa.if.end84.i115

csroa.if.end84.i115:                              ; preds = %csroa.if.else.i4, %csroa.if.end89.i113
  %.phi85.i114 = phi i32 [ %.phi90.i112, %csroa.if.end89.i113 ], [ 44, %csroa.if.else.i4 ]
  br label %csroa.if.end79.i117

csroa.if.end79.i117:                              ; preds = %csroa.if.else.i4, %csroa.if.end84.i115
  %.phi80.i116 = phi i32 [ %.phi85.i114, %csroa.if.end84.i115 ], [ 45, %csroa.if.else.i4 ]
  br label %csroa.if.end74.i119

csroa.if.end74.i119:                              ; preds = %csroa.if.else.i4, %csroa.if.end79.i117
  %.phi75.i118 = phi i32 [ %.phi80.i116, %csroa.if.end79.i117 ], [ 46, %csroa.if.else.i4 ]
  br label %csroa.if.end69.i121

csroa.if.end69.i121:                              ; preds = %csroa.if.else.i4, %csroa.if.end74.i119
  %.phi70.i120 = phi i32 [ %.phi75.i118, %csroa.if.end74.i119 ], [ 47, %csroa.if.else.i4 ]
  br label %csroa.if.end64.i123

csroa.if.end64.i123:                              ; preds = %csroa.if.else.i4, %csroa.if.end69.i121
  %.phi65.i122 = phi i32 [ %.phi70.i120, %csroa.if.end69.i121 ], [ 48, %csroa.if.else.i4 ]
  br label %csroa.if.end59.i125

csroa.if.end59.i125:                              ; preds = %csroa.if.else.i4, %csroa.if.end64.i123
  %.phi60.i124 = phi i32 [ %.phi65.i122, %csroa.if.end64.i123 ], [ 49, %csroa.if.else.i4 ]
  br label %csroa.if.end54.i127

csroa.if.end54.i127:                              ; preds = %csroa.if.else.i4, %csroa.if.end59.i125
  %.phi55.i126 = phi i32 [ %.phi60.i124, %csroa.if.end59.i125 ], [ 50, %csroa.if.else.i4 ]
  br label %csroa.if.end49.i129

csroa.if.end49.i129:                              ; preds = %csroa.if.else.i4, %csroa.if.end54.i127
  %.phi50.i128 = phi i32 [ %.phi55.i126, %csroa.if.end54.i127 ], [ 51, %csroa.if.else.i4 ]
  br label %csroa.if.end44.i131

csroa.if.end44.i131:                              ; preds = %csroa.if.else.i4, %csroa.if.end49.i129
  %.phi45.i130 = phi i32 [ %.phi50.i128, %csroa.if.end49.i129 ], [ 52, %csroa.if.else.i4 ]
  br label %csroa.if.end39.i133

csroa.if.end39.i133:                              ; preds = %csroa.if.else.i4, %csroa.if.end44.i131
  %.phi40.i132 = phi i32 [ %.phi45.i130, %csroa.if.end44.i131 ], [ 53, %csroa.if.else.i4 ]
  br label %csroa.if.end34.i135

csroa.if.end34.i135:                              ; preds = %csroa.if.else.i4, %csroa.if.end39.i133
  %.phi35.i134 = phi i32 [ %.phi40.i132, %csroa.if.end39.i133 ], [ 54, %csroa.if.else.i4 ]
  br label %csroa.if.end29.i137

csroa.if.end29.i137:                              ; preds = %csroa.if.else.i4, %csroa.if.end34.i135
  %.phi30.i136 = phi i32 [ %.phi35.i134, %csroa.if.end34.i135 ], [ 55, %csroa.if.else.i4 ]
  br label %csroa.if.end24.i139

csroa.if.end24.i139:                              ; preds = %csroa.if.else.i4, %csroa.if.end29.i137
  %.phi25.i138 = phi i32 [ %.phi30.i136, %csroa.if.end29.i137 ], [ 56, %csroa.if.else.i4 ]
  br label %csroa.if.end19.i141

csroa.if.end19.i141:                              ; preds = %csroa.if.else.i4, %csroa.if.end24.i139
  %.phi20.i140 = phi i32 [ %.phi25.i138, %csroa.if.end24.i139 ], [ 57, %csroa.if.else.i4 ]
  br label %csroa.if.end14.i143

csroa.if.end14.i143:                              ; preds = %csroa.if.else.i4, %csroa.if.end19.i141
  %.phi15.i142 = phi i32 [ %.phi20.i140, %csroa.if.end19.i141 ], [ 58, %csroa.if.else.i4 ]
  br label %csroa.if.end9.i145

csroa.if.end9.i145:                               ; preds = %csroa.if.else.i4, %csroa.if.end14.i143
  %.phi10.i144 = phi i32 [ %.phi15.i142, %csroa.if.end14.i143 ], [ 59, %csroa.if.else.i4 ]
  br label %if.end13

if.else:                                          ; preds = %for.end
  br i1 %.cmp.0.i1, label %if.end13, label %csroa.if.else.i152

csroa.if.else.i152:                               ; preds = %if.else
  switch i32 %mil.0.lcssa, label %csroa.if.end144.i243 [
    i32 1, label %if.end13
    i32 2, label %csroa.if.end9.i297
    i32 3, label %csroa.if.end14.i295
    i32 4, label %csroa.if.end19.i293
    i32 5, label %csroa.if.end24.i291
    i32 6, label %csroa.if.end29.i289
    i32 7, label %csroa.if.end34.i287
    i32 8, label %csroa.if.end39.i285
    i32 9, label %csroa.if.end44.i283
    i32 10, label %csroa.if.end49.i281
    i32 11, label %csroa.if.end54.i279
    i32 12, label %csroa.if.end59.i277
    i32 13, label %csroa.if.end64.i275
    i32 14, label %csroa.if.end69.i273
    i32 15, label %csroa.if.end74.i271
    i32 16, label %csroa.if.end79.i269
    i32 17, label %csroa.if.end84.i267
    i32 18, label %csroa.if.end89.i265
    i32 19, label %csroa.if.end94.i263
    i32 20, label %csroa.if.end99.i261
    i32 21, label %csroa.if.end104.i259
    i32 22, label %csroa.if.end109.i257
    i32 23, label %csroa.if.end114.i255
    i32 24, label %csroa.if.end119.i253
    i32 25, label %csroa.if.end124.i251
    i32 26, label %csroa.if.end129.i249
    i32 27, label %csroa.if.end134.i247
    i32 28, label %csroa.if.end139.i245
  ]

csroa.if.end144.i243:                             ; preds = %csroa.if.else.i152
  br label %csroa.if.end139.i245

csroa.if.end139.i245:                             ; preds = %csroa.if.else.i152, %csroa.if.end144.i243
  %.phi140.i244 = phi i32 [ 4, %csroa.if.end144.i243 ], [ 5, %csroa.if.else.i152 ]
  br label %csroa.if.end134.i247

csroa.if.end134.i247:                             ; preds = %csroa.if.else.i152, %csroa.if.end139.i245
  %.phi135.i246 = phi i32 [ %.phi140.i244, %csroa.if.end139.i245 ], [ 6, %csroa.if.else.i152 ]
  br label %csroa.if.end129.i249

csroa.if.end129.i249:                             ; preds = %csroa.if.else.i152, %csroa.if.end134.i247
  %.phi130.i248 = phi i32 [ %.phi135.i246, %csroa.if.end134.i247 ], [ 7, %csroa.if.else.i152 ]
  br label %csroa.if.end124.i251

csroa.if.end124.i251:                             ; preds = %csroa.if.else.i152, %csroa.if.end129.i249
  %.phi125.i250 = phi i32 [ %.phi130.i248, %csroa.if.end129.i249 ], [ 8, %csroa.if.else.i152 ]
  br label %csroa.if.end119.i253

csroa.if.end119.i253:                             ; preds = %csroa.if.else.i152, %csroa.if.end124.i251
  %.phi120.i252 = phi i32 [ %.phi125.i250, %csroa.if.end124.i251 ], [ 9, %csroa.if.else.i152 ]
  br label %csroa.if.end114.i255

csroa.if.end114.i255:                             ; preds = %csroa.if.else.i152, %csroa.if.end119.i253
  %.phi115.i254 = phi i32 [ %.phi120.i252, %csroa.if.end119.i253 ], [ 10, %csroa.if.else.i152 ]
  br label %csroa.if.end109.i257

csroa.if.end109.i257:                             ; preds = %csroa.if.else.i152, %csroa.if.end114.i255
  %.phi110.i256 = phi i32 [ %.phi115.i254, %csroa.if.end114.i255 ], [ 11, %csroa.if.else.i152 ]
  br label %csroa.if.end104.i259

csroa.if.end104.i259:                             ; preds = %csroa.if.else.i152, %csroa.if.end109.i257
  %.phi105.i258 = phi i32 [ %.phi110.i256, %csroa.if.end109.i257 ], [ 12, %csroa.if.else.i152 ]
  br label %csroa.if.end99.i261

csroa.if.end99.i261:                              ; preds = %csroa.if.else.i152, %csroa.if.end104.i259
  %.phi100.i260 = phi i32 [ %.phi105.i258, %csroa.if.end104.i259 ], [ 13, %csroa.if.else.i152 ]
  br label %csroa.if.end94.i263

csroa.if.end94.i263:                              ; preds = %csroa.if.else.i152, %csroa.if.end99.i261
  %.phi95.i262 = phi i32 [ %.phi100.i260, %csroa.if.end99.i261 ], [ 14, %csroa.if.else.i152 ]
  br label %csroa.if.end89.i265

csroa.if.end89.i265:                              ; preds = %csroa.if.else.i152, %csroa.if.end94.i263
  %.phi90.i264 = phi i32 [ %.phi95.i262, %csroa.if.end94.i263 ], [ 15, %csroa.if.else.i152 ]
  br label %csroa.if.end84.i267

csroa.if.end84.i267:                              ; preds = %csroa.if.else.i152, %csroa.if.end89.i265
  %.phi85.i266 = phi i32 [ %.phi90.i264, %csroa.if.end89.i265 ], [ 16, %csroa.if.else.i152 ]
  br label %csroa.if.end79.i269

csroa.if.end79.i269:                              ; preds = %csroa.if.else.i152, %csroa.if.end84.i267
  %.phi80.i268 = phi i32 [ %.phi85.i266, %csroa.if.end84.i267 ], [ 17, %csroa.if.else.i152 ]
  br label %csroa.if.end74.i271

csroa.if.end74.i271:                              ; preds = %csroa.if.else.i152, %csroa.if.end79.i269
  %.phi75.i270 = phi i32 [ %.phi80.i268, %csroa.if.end79.i269 ], [ 18, %csroa.if.else.i152 ]
  br label %csroa.if.end69.i273

csroa.if.end69.i273:                              ; preds = %csroa.if.else.i152, %csroa.if.end74.i271
  %.phi70.i272 = phi i32 [ %.phi75.i270, %csroa.if.end74.i271 ], [ 19, %csroa.if.else.i152 ]
  br label %csroa.if.end64.i275

csroa.if.end64.i275:                              ; preds = %csroa.if.else.i152, %csroa.if.end69.i273
  %.phi65.i274 = phi i32 [ %.phi70.i272, %csroa.if.end69.i273 ], [ 20, %csroa.if.else.i152 ]
  br label %csroa.if.end59.i277

csroa.if.end59.i277:                              ; preds = %csroa.if.else.i152, %csroa.if.end64.i275
  %.phi60.i276 = phi i32 [ %.phi65.i274, %csroa.if.end64.i275 ], [ 21, %csroa.if.else.i152 ]
  br label %csroa.if.end54.i279

csroa.if.end54.i279:                              ; preds = %csroa.if.else.i152, %csroa.if.end59.i277
  %.phi55.i278 = phi i32 [ %.phi60.i276, %csroa.if.end59.i277 ], [ 22, %csroa.if.else.i152 ]
  br label %csroa.if.end49.i281

csroa.if.end49.i281:                              ; preds = %csroa.if.else.i152, %csroa.if.end54.i279
  %.phi50.i280 = phi i32 [ %.phi55.i278, %csroa.if.end54.i279 ], [ 23, %csroa.if.else.i152 ]
  br label %csroa.if.end44.i283

csroa.if.end44.i283:                              ; preds = %csroa.if.else.i152, %csroa.if.end49.i281
  %.phi45.i282 = phi i32 [ %.phi50.i280, %csroa.if.end49.i281 ], [ 24, %csroa.if.else.i152 ]
  br label %csroa.if.end39.i285

csroa.if.end39.i285:                              ; preds = %csroa.if.else.i152, %csroa.if.end44.i283
  %.phi40.i284 = phi i32 [ %.phi45.i282, %csroa.if.end44.i283 ], [ 25, %csroa.if.else.i152 ]
  br label %csroa.if.end34.i287

csroa.if.end34.i287:                              ; preds = %csroa.if.else.i152, %csroa.if.end39.i285
  %.phi35.i286 = phi i32 [ %.phi40.i284, %csroa.if.end39.i285 ], [ 26, %csroa.if.else.i152 ]
  br label %csroa.if.end29.i289

csroa.if.end29.i289:                              ; preds = %csroa.if.else.i152, %csroa.if.end34.i287
  %.phi30.i288 = phi i32 [ %.phi35.i286, %csroa.if.end34.i287 ], [ 27, %csroa.if.else.i152 ]
  br label %csroa.if.end24.i291

csroa.if.end24.i291:                              ; preds = %csroa.if.else.i152, %csroa.if.end29.i289
  %.phi25.i290 = phi i32 [ %.phi30.i288, %csroa.if.end29.i289 ], [ 28, %csroa.if.else.i152 ]
  br label %csroa.if.end19.i293

csroa.if.end19.i293:                              ; preds = %csroa.if.else.i152, %csroa.if.end24.i291
  %.phi20.i292 = phi i32 [ %.phi25.i290, %csroa.if.end24.i291 ], [ 29, %csroa.if.else.i152 ]
  br label %csroa.if.end14.i295

csroa.if.end14.i295:                              ; preds = %csroa.if.else.i152, %csroa.if.end19.i293
  %.phi15.i294 = phi i32 [ %.phi20.i292, %csroa.if.end19.i293 ], [ 30, %csroa.if.else.i152 ]
  br label %csroa.if.end9.i297

csroa.if.end9.i297:                               ; preds = %csroa.if.else.i152, %csroa.if.end14.i295
  %.phi10.i296 = phi i32 [ %.phi15.i294, %csroa.if.end14.i295 ], [ 31, %csroa.if.else.i152 ]
  br label %if.end13

if.end13:                                         ; preds = %if.else, %csroa.if.else.i152, %csroa.if.end9.i297, %if.then8, %csroa.if.else.i4, %csroa.if.end9.i145
  %ril.0 = phi i32 [ 61, %if.then8 ], [ %.phi10.i144, %csroa.if.end9.i145 ], [ 60, %csroa.if.else.i4 ], [ 63, %if.else ], [ %.phi10.i296, %csroa.if.end9.i297 ], [ 62, %csroa.if.else.i152 ]
  ret i32 %ril.0
}

; Function Attrs: noinline norecurse nounwind
define void @reset.v0.C.c.c() local_unnamed_addr #4 {
entry:
  store i32 32, i32* @dec_detl, align 4
  store i32 32, i32* @detl, align 4
  store i32 8, i32* @dec_deth, align 4
  store i32 8, i32* @deth, align 4
  store i32 0, i32* @rlt2, align 4
  store i32 0, i32* @rlt1, align 4
  store i32 0, i32* @plt2, align 4
  store i32 0, i32* @plt1, align 4
  store i32 0, i32* @al2, align 4
  store i32 0, i32* @al1, align 4
  store i32 0, i32* @nbl, align 4
  store i32 0, i32* @rh2, align 4
  store i32 0, i32* @rh1, align 4
  store i32 0, i32* @ph2, align 4
  store i32 0, i32* @ph1, align 4
  store i32 0, i32* @ah2, align 4
  store i32 0, i32* @ah1, align 4
  store i32 0, i32* @nbh, align 4
  store i32 0, i32* @dec_rlt2, align 4
  store i32 0, i32* @dec_rlt1, align 4
  store i32 0, i32* @dec_plt2, align 4
  store i32 0, i32* @dec_plt1, align 4
  store i32 0, i32* @dec_al2, align 4
  store i32 0, i32* @dec_al1, align 4
  store i32 0, i32* @dec_nbl, align 4
  store i32 0, i32* @dec_rh2, align 4
  store i32 0, i32* @dec_rh1, align 4
  store i32 0, i32* @dec_ph2, align 4
  store i32 0, i32* @dec_ph1, align 4
  store i32 0, i32* @dec_ah2, align 4
  store i32 0, i32* @dec_ah1, align 4
  store i32 0, i32* @dec_nbh, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %i.044 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  switch i32 %i.044, label %for.inc [
    i32 0, label %csroa.if.then.i48
    i32 1, label %for.inc.sink.split
    i32 2, label %csroa.if.then6.i54
    i32 3, label %csroa.if.then10.i57
    i32 4, label %csroa.if.then14.i60
    i32 5, label %csroa.if.then18.i63
  ]

csroa.if.then.i48:                                ; preds = %for.body
  br label %for.inc.sink.split

csroa.if.then6.i54:                               ; preds = %for.body
  br label %for.inc.sink.split

csroa.if.then10.i57:                              ; preds = %for.body
  br label %for.inc.sink.split

csroa.if.then14.i60:                              ; preds = %for.body
  br label %for.inc.sink.split

csroa.if.then18.i63:                              ; preds = %for.body
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %for.body, %csroa.if.then10.i57, %csroa.if.then18.i63, %csroa.if.then14.i60, %csroa.if.then6.i54, %csroa.if.then.i48
  %delay_dltx.0.sink = phi i32* [ @delay_dltx.0, %csroa.if.then.i48 ], [ @delay_dltx.2, %csroa.if.then6.i54 ], [ @delay_dltx.4, %csroa.if.then14.i60 ], [ @delay_dltx.5, %csroa.if.then18.i63 ], [ @delay_dltx.3, %csroa.if.then10.i57 ], [ @delay_dltx.1, %for.body ]
  %delay_dhx.0.sink = phi i32* [ @delay_dhx.0, %csroa.if.then.i48 ], [ @delay_dhx.2, %csroa.if.then6.i54 ], [ @delay_dhx.4, %csroa.if.then14.i60 ], [ @delay_dhx.5, %csroa.if.then18.i63 ], [ @delay_dhx.3, %csroa.if.then10.i57 ], [ @delay_dhx.1, %for.body ]
  %dec_del_dltx.0.sink = phi i32* [ @dec_del_dltx.0, %csroa.if.then.i48 ], [ @dec_del_dltx.2, %csroa.if.then6.i54 ], [ @dec_del_dltx.4, %csroa.if.then14.i60 ], [ @dec_del_dltx.5, %csroa.if.then18.i63 ], [ @dec_del_dltx.3, %csroa.if.then10.i57 ], [ @dec_del_dltx.1, %for.body ]
  %dec_del_dhx.0.sink = phi i32* [ @dec_del_dhx.0, %csroa.if.then.i48 ], [ @dec_del_dhx.2, %csroa.if.then6.i54 ], [ @dec_del_dhx.4, %csroa.if.then14.i60 ], [ @dec_del_dhx.5, %csroa.if.then18.i63 ], [ @dec_del_dhx.3, %csroa.if.then10.i57 ], [ @dec_del_dhx.1, %for.body ]
  store i32 0, i32* %delay_dltx.0.sink, align 16
  store i32 0, i32* %delay_dhx.0.sink, align 16
  store i32 0, i32* %dec_del_dltx.0.sink, align 16
  store i32 0, i32* %dec_del_dhx.0.sink, align 16
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %for.body
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond47 = icmp eq i32 %inc, 6
  br i1 %exitcond47, label %for.body9.preheader, label %for.body

for.body9.preheader:                              ; preds = %for.inc
  br label %for.body9

for.body9:                                        ; preds = %for.body9.preheader, %for.inc18
  %i.143 = phi i32 [ %inc19, %for.inc18 ], [ 0, %for.body9.preheader ]
  switch i32 %i.143, label %for.inc18 [
    i32 0, label %csroa.if.then.i140
    i32 1, label %for.inc18.sink.split
    i32 2, label %csroa.if.then6.i146
    i32 3, label %csroa.if.then10.i149
    i32 4, label %csroa.if.then14.i152
    i32 5, label %csroa.if.then18.i155
  ]

csroa.if.then.i140:                               ; preds = %for.body9
  br label %for.inc18.sink.split

csroa.if.then6.i146:                              ; preds = %for.body9
  br label %for.inc18.sink.split

csroa.if.then10.i149:                             ; preds = %for.body9
  br label %for.inc18.sink.split

csroa.if.then14.i152:                             ; preds = %for.body9
  br label %for.inc18.sink.split

csroa.if.then18.i155:                             ; preds = %for.body9
  br label %for.inc18.sink.split

for.inc18.sink.split:                             ; preds = %for.body9, %csroa.if.then10.i149, %csroa.if.then18.i155, %csroa.if.then14.i152, %csroa.if.then6.i146, %csroa.if.then.i140
  %delay_bpl.0.sink = phi i32* [ @delay_bpl.0, %csroa.if.then.i140 ], [ @delay_bpl.2, %csroa.if.then6.i146 ], [ @delay_bpl.4, %csroa.if.then14.i152 ], [ @delay_bpl.5, %csroa.if.then18.i155 ], [ @delay_bpl.3, %csroa.if.then10.i149 ], [ @delay_bpl.1, %for.body9 ]
  %delay_bph.0.sink = phi i32* [ @delay_bph.0, %csroa.if.then.i140 ], [ @delay_bph.2, %csroa.if.then6.i146 ], [ @delay_bph.4, %csroa.if.then14.i152 ], [ @delay_bph.5, %csroa.if.then18.i155 ], [ @delay_bph.3, %csroa.if.then10.i149 ], [ @delay_bph.1, %for.body9 ]
  %dec_del_bpl.0.sink = phi i32* [ @dec_del_bpl.0, %csroa.if.then.i140 ], [ @dec_del_bpl.2, %csroa.if.then6.i146 ], [ @dec_del_bpl.4, %csroa.if.then14.i152 ], [ @dec_del_bpl.5, %csroa.if.then18.i155 ], [ @dec_del_bpl.3, %csroa.if.then10.i149 ], [ @dec_del_bpl.1, %for.body9 ]
  %dec_del_bph.0.sink = phi i32* [ @dec_del_bph.0, %csroa.if.then.i140 ], [ @dec_del_bph.2, %csroa.if.then6.i146 ], [ @dec_del_bph.4, %csroa.if.then14.i152 ], [ @dec_del_bph.5, %csroa.if.then18.i155 ], [ @dec_del_bph.3, %csroa.if.then10.i149 ], [ @dec_del_bph.1, %for.body9 ]
  store i32 0, i32* %delay_bpl.0.sink, align 16
  store i32 0, i32* %delay_bph.0.sink, align 16
  store i32 0, i32* %dec_del_bpl.0.sink, align 16
  store i32 0, i32* %dec_del_bph.0.sink, align 16
  br label %for.inc18

for.inc18:                                        ; preds = %for.inc18.sink.split, %for.body9
  %inc19 = add nuw nsw i32 %i.143, 1
  %exitcond46 = icmp eq i32 %inc19, 6
  br i1 %exitcond46, label %for.body23.preheader, label %for.body9

for.body23.preheader:                             ; preds = %for.inc18
  br label %for.body23

for.body23:                                       ; preds = %for.body23.preheader, %for.inc26
  %i.242 = phi i32 [ %inc27, %for.inc26 ], [ 0, %for.body23.preheader ]
  switch i32 %i.242, label %for.inc26 [
    i32 0, label %csroa.if.then.i163
    i32 1, label %for.inc26.sink.split
    i32 2, label %csroa.if.then6.i169
    i32 3, label %csroa.if.then10.i172
    i32 4, label %csroa.if.then14.i175
    i32 5, label %csroa.if.then18.i178
    i32 6, label %csroa.if.then22.i
    i32 7, label %csroa.if.then26.i
    i32 8, label %csroa.if.then30.i
    i32 9, label %csroa.if.then34.i
    i32 10, label %csroa.if.then38.i
    i32 11, label %csroa.if.then42.i
    i32 12, label %csroa.if.then46.i
    i32 13, label %csroa.if.then50.i
    i32 14, label %csroa.if.then54.i
    i32 15, label %csroa.if.then58.i
    i32 16, label %csroa.if.then62.i
    i32 17, label %csroa.if.then66.i
    i32 18, label %csroa.if.then70.i
    i32 19, label %csroa.if.then74.i
    i32 20, label %csroa.if.then78.i
    i32 21, label %csroa.if.then82.i
    i32 22, label %csroa.if.then86.i
    i32 23, label %csroa.if.then90.i
  ]

csroa.if.then.i163:                               ; preds = %for.body23
  br label %for.inc26.sink.split

csroa.if.then6.i169:                              ; preds = %for.body23
  br label %for.inc26.sink.split

csroa.if.then10.i172:                             ; preds = %for.body23
  br label %for.inc26.sink.split

csroa.if.then14.i175:                             ; preds = %for.body23
  br label %for.inc26.sink.split

csroa.if.then18.i178:                             ; preds = %for.body23
  br label %for.inc26.sink.split

csroa.if.then22.i:                                ; preds = %for.body23
  br label %for.inc26.sink.split

csroa.if.then26.i:                                ; preds = %for.body23
  br label %for.inc26.sink.split

csroa.if.then30.i:                                ; preds = %for.body23
  br label %for.inc26.sink.split

csroa.if.then34.i:                                ; preds = %for.body23
  br label %for.inc26.sink.split

csroa.if.then38.i:                                ; preds = %for.body23
  br label %for.inc26.sink.split

csroa.if.then42.i:                                ; preds = %for.body23
  br label %for.inc26.sink.split

csroa.if.then46.i:                                ; preds = %for.body23
  br label %for.inc26.sink.split

csroa.if.then50.i:                                ; preds = %for.body23
  br label %for.inc26.sink.split

csroa.if.then54.i:                                ; preds = %for.body23
  br label %for.inc26.sink.split

csroa.if.then58.i:                                ; preds = %for.body23
  br label %for.inc26.sink.split

csroa.if.then62.i:                                ; preds = %for.body23
  br label %for.inc26.sink.split

csroa.if.then66.i:                                ; preds = %for.body23
  br label %for.inc26.sink.split

csroa.if.then70.i:                                ; preds = %for.body23
  br label %for.inc26.sink.split

csroa.if.then74.i:                                ; preds = %for.body23
  br label %for.inc26.sink.split

csroa.if.then78.i:                                ; preds = %for.body23
  br label %for.inc26.sink.split

csroa.if.then82.i:                                ; preds = %for.body23
  br label %for.inc26.sink.split

csroa.if.then86.i:                                ; preds = %for.body23
  br label %for.inc26.sink.split

csroa.if.then90.i:                                ; preds = %for.body23
  br label %for.inc26.sink.split

for.inc26.sink.split:                             ; preds = %for.body23, %csroa.if.then10.i172, %csroa.if.then18.i178, %csroa.if.then26.i, %csroa.if.then34.i, %csroa.if.then42.i, %csroa.if.then50.i, %csroa.if.then58.i, %csroa.if.then66.i, %csroa.if.then74.i, %csroa.if.then82.i, %csroa.if.then90.i, %csroa.if.then86.i, %csroa.if.then78.i, %csroa.if.then70.i, %csroa.if.then62.i, %csroa.if.then54.i, %csroa.if.then46.i, %csroa.if.then38.i, %csroa.if.then30.i, %csroa.if.then22.i, %csroa.if.then14.i175, %csroa.if.then6.i169, %csroa.if.then.i163
  %tqmf.0.sink = phi i32* [ @tqmf.0, %csroa.if.then.i163 ], [ @tqmf.2, %csroa.if.then6.i169 ], [ @tqmf.4, %csroa.if.then14.i175 ], [ @tqmf.6, %csroa.if.then22.i ], [ @tqmf.8, %csroa.if.then30.i ], [ @tqmf.10, %csroa.if.then38.i ], [ @tqmf.12, %csroa.if.then46.i ], [ @tqmf.14, %csroa.if.then54.i ], [ @tqmf.16, %csroa.if.then62.i ], [ @tqmf.18, %csroa.if.then70.i ], [ @tqmf.20, %csroa.if.then78.i ], [ @tqmf.22, %csroa.if.then86.i ], [ @tqmf.23, %csroa.if.then90.i ], [ @tqmf.21, %csroa.if.then82.i ], [ @tqmf.19, %csroa.if.then74.i ], [ @tqmf.17, %csroa.if.then66.i ], [ @tqmf.15, %csroa.if.then58.i ], [ @tqmf.13, %csroa.if.then50.i ], [ @tqmf.11, %csroa.if.then42.i ], [ @tqmf.9, %csroa.if.then34.i ], [ @tqmf.7, %csroa.if.then26.i ], [ @tqmf.5, %csroa.if.then18.i178 ], [ @tqmf.3, %csroa.if.then10.i172 ], [ @tqmf.1, %for.body23 ]
  store i32 0, i32* %tqmf.0.sink, align 16
  br label %for.inc26

for.inc26:                                        ; preds = %for.inc26.sink.split, %for.body23
  %inc27 = add nuw nsw i32 %i.242, 1
  %exitcond45 = icmp eq i32 %inc27, 24
  br i1 %exitcond45, label %for.body31.preheader, label %for.body23

for.body31.preheader:                             ; preds = %for.inc26
  br label %for.body31

for.body31:                                       ; preds = %for.body31.preheader, %for.inc36
  %i.341 = phi i32 [ %inc37, %for.inc36 ], [ 0, %for.body31.preheader ]
  switch i32 %i.341, label %for.inc36 [
    i32 0, label %for.inc36.sink.split
    i32 1, label %__non_const_wrapper__.60.exit.sink.split.thread31
    i32 2, label %csroa.if.then6.i235
    i32 3, label %csroa.if.then10.i238
    i32 4, label %csroa.if.then14.i241
    i32 5, label %csroa.if.then18.i244
    i32 6, label %csroa.if.then22.i247
    i32 7, label %csroa.if.then26.i250
    i32 8, label %csroa.if.then30.i253
    i32 9, label %csroa.if.then34.i256
    i32 10, label %csroa.if.then38.i259
  ]

__non_const_wrapper__.60.exit.sink.split.thread31: ; preds = %for.body31
  br label %for.inc36.sink.split

csroa.if.then6.i235:                              ; preds = %for.body31
  br label %for.inc36.sink.split

csroa.if.then10.i238:                             ; preds = %for.body31
  br label %for.inc36.sink.split

csroa.if.then14.i241:                             ; preds = %for.body31
  br label %for.inc36.sink.split

csroa.if.then18.i244:                             ; preds = %for.body31
  br label %for.inc36.sink.split

csroa.if.then22.i247:                             ; preds = %for.body31
  br label %for.inc36.sink.split

csroa.if.then26.i250:                             ; preds = %for.body31
  br label %for.inc36.sink.split

csroa.if.then30.i253:                             ; preds = %for.body31
  br label %for.inc36.sink.split

csroa.if.then34.i256:                             ; preds = %for.body31
  br label %for.inc36.sink.split

csroa.if.then38.i259:                             ; preds = %for.body31
  br label %for.inc36.sink.split

for.inc36.sink.split:                             ; preds = %for.body31, %__non_const_wrapper__.60.exit.sink.split.thread31, %csroa.if.then10.i238, %csroa.if.then18.i244, %csroa.if.then26.i250, %csroa.if.then34.i256, %csroa.if.then38.i259, %csroa.if.then30.i253, %csroa.if.then22.i247, %csroa.if.then14.i241, %csroa.if.then6.i235
  %accumc.1.sink = phi i32* [ @accumc.1, %__non_const_wrapper__.60.exit.sink.split.thread31 ], [ @accumc.3, %csroa.if.then10.i238 ], [ @accumc.5, %csroa.if.then18.i244 ], [ @accumc.7, %csroa.if.then26.i250 ], [ @accumc.9, %csroa.if.then34.i256 ], [ @accumc.10, %csroa.if.then38.i259 ], [ @accumc.8, %csroa.if.then30.i253 ], [ @accumc.6, %csroa.if.then22.i247 ], [ @accumc.4, %csroa.if.then14.i241 ], [ @accumc.2, %csroa.if.then6.i235 ], [ @accumc.0, %for.body31 ]
  %accumd.0.sink = phi i32* [ @accumd.1, %__non_const_wrapper__.60.exit.sink.split.thread31 ], [ @accumd.3, %csroa.if.then10.i238 ], [ @accumd.5, %csroa.if.then18.i244 ], [ @accumd.7, %csroa.if.then26.i250 ], [ @accumd.9, %csroa.if.then34.i256 ], [ @accumd.10, %csroa.if.then38.i259 ], [ @accumd.8, %csroa.if.then30.i253 ], [ @accumd.6, %csroa.if.then22.i247 ], [ @accumd.4, %csroa.if.then14.i241 ], [ @accumd.2, %csroa.if.then6.i235 ], [ @accumd.0, %for.body31 ]
  store i32 0, i32* %accumc.1.sink, align 16
  store i32 0, i32* %accumd.0.sink, align 16
  br label %for.inc36

for.inc36:                                        ; preds = %for.body31, %for.inc36.sink.split
  %inc37 = add nuw nsw i32 %i.341, 1
  %exitcond = icmp eq i32 %inc37, 11
  br i1 %exitcond, label %for.end38, label %for.body31

for.end38:                                        ; preds = %for.inc36
  ret void
}

; Function Attrs: noinline norecurse nounwind readnone
define i32 @logscl.v0.C.c.c(i32 %il, i32 %nbl) local_unnamed_addr #3 {
entry:
  %conv = sext i32 %nbl to i64
  %mul = mul nsw i64 %conv, 127
  %shr1 = lshr i64 %mul, 7
  %conv1 = trunc i64 %shr1 to i32
  %shr2 = ashr i32 %il, 2
  switch i32 %shr2, label %csroa.if.end74.i [
    i32 0, label %__non_const_wrapper__.72.exit
    i32 1, label %csroa.if.end4.i
    i32 2, label %csroa.if.end9.i
    i32 3, label %csroa.if.end14.i
    i32 4, label %csroa.if.end19.i
    i32 5, label %csroa.if.end24.i
    i32 6, label %csroa.if.end29.i
    i32 7, label %csroa.if.end34.i
    i32 8, label %csroa.if.end39.i
    i32 9, label %csroa.if.end44.i
    i32 10, label %csroa.if.end49.i
    i32 11, label %csroa.if.end54.i
    i32 12, label %csroa.if.end59.i
    i32 13, label %csroa.if.end64.i
    i32 14, label %csroa.if.end69.i
  ]

csroa.if.end74.i:                                 ; preds = %entry
  br label %csroa.if.end69.i

csroa.if.end69.i:                                 ; preds = %entry, %csroa.if.end74.i
  %.phi70.i = phi i32 [ -60, %csroa.if.end74.i ], [ -30, %entry ]
  br label %csroa.if.end64.i

csroa.if.end64.i:                                 ; preds = %entry, %csroa.if.end69.i
  %.phi65.i = phi i32 [ %.phi70.i, %csroa.if.end69.i ], [ 58, %entry ]
  br label %csroa.if.end59.i

csroa.if.end59.i:                                 ; preds = %entry, %csroa.if.end64.i
  %.phi60.i = phi i32 [ %.phi65.i, %csroa.if.end64.i ], [ 172, %entry ]
  br label %csroa.if.end54.i

csroa.if.end54.i:                                 ; preds = %entry, %csroa.if.end59.i
  %.phi55.i = phi i32 [ %.phi60.i, %csroa.if.end59.i ], [ 334, %entry ]
  br label %csroa.if.end49.i

csroa.if.end49.i:                                 ; preds = %entry, %csroa.if.end54.i
  %.phi50.i = phi i32 [ %.phi55.i, %csroa.if.end54.i ], [ 538, %entry ]
  br label %csroa.if.end44.i

csroa.if.end44.i:                                 ; preds = %entry, %csroa.if.end49.i
  %.phi45.i = phi i32 [ %.phi50.i, %csroa.if.end49.i ], [ 1198, %entry ]
  br label %csroa.if.end39.i

csroa.if.end39.i:                                 ; preds = %entry, %csroa.if.end44.i
  %.phi40.i = phi i32 [ %.phi45.i, %csroa.if.end44.i ], [ 3042, %entry ]
  br label %csroa.if.end34.i

csroa.if.end34.i:                                 ; preds = %entry, %csroa.if.end39.i
  %.phi35.i = phi i32 [ %.phi40.i, %csroa.if.end39.i ], [ -30, %entry ]
  br label %csroa.if.end29.i

csroa.if.end29.i:                                 ; preds = %entry, %csroa.if.end34.i
  %.phi30.i = phi i32 [ %.phi35.i, %csroa.if.end34.i ], [ 58, %entry ]
  br label %csroa.if.end24.i

csroa.if.end24.i:                                 ; preds = %entry, %csroa.if.end29.i
  %.phi25.i = phi i32 [ %.phi30.i, %csroa.if.end29.i ], [ 172, %entry ]
  br label %csroa.if.end19.i

csroa.if.end19.i:                                 ; preds = %entry, %csroa.if.end24.i
  %.phi20.i = phi i32 [ %.phi25.i, %csroa.if.end24.i ], [ 334, %entry ]
  br label %csroa.if.end14.i

csroa.if.end14.i:                                 ; preds = %entry, %csroa.if.end19.i
  %.phi15.i = phi i32 [ %.phi20.i, %csroa.if.end19.i ], [ 538, %entry ]
  br label %csroa.if.end9.i

csroa.if.end9.i:                                  ; preds = %entry, %csroa.if.end14.i
  %.phi10.i = phi i32 [ %.phi15.i, %csroa.if.end14.i ], [ 1198, %entry ]
  br label %csroa.if.end4.i

csroa.if.end4.i:                                  ; preds = %entry, %csroa.if.end9.i
  %.phi5.i = phi i32 [ %.phi10.i, %csroa.if.end9.i ], [ 3042, %entry ]
  br label %__non_const_wrapper__.72.exit

__non_const_wrapper__.72.exit:                    ; preds = %entry, %csroa.if.end4.i
  %.phi.i = phi i32 [ %.phi5.i, %csroa.if.end4.i ], [ -60, %entry ]
  %add = add nsw i32 %.phi.i, %conv1
  %0 = icmp sgt i32 %add, 0
  %.add = select i1 %0, i32 %add, i32 0
  %1 = icmp slt i32 %.add, 18432
  %nbl.addr.1 = select i1 %1, i32 %.add, i32 18432
  ret i32 %nbl.addr.1
}

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind readnone }
attributes #3 = { noinline norecurse nounwind readnone }
attributes #4 = { noinline norecurse nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
