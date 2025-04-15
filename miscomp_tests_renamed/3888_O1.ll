; 161352115749418602472728578646191141187
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/161352115749418602472728578646191141187.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/161352115749418602472728578646191141187.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WorkEntrySType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ShrPcPteSType = type { %struct.ShrPcStatsSType }
%struct.ShrPcStatsSType = type { i32, i32, %struct.ShrPcCommonStatSType, %union.ShrPcStatUnion }
%struct.ShrPcCommonStatSType = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.ShrPcStatUnion = type { %struct.ShrPcGemStatSType }
%struct.ShrPcGemStatSType = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [40 x i64] }

@Local1 = dso_local local_unnamed_addr global ptr null, align 8
@Local2 = dso_local local_unnamed_addr global ptr null, align 8
@Local3 = dso_local local_unnamed_addr global ptr null, align 8
@RDbf1 = dso_local local_unnamed_addr global ptr null, align 8
@RDbf2 = dso_local local_unnamed_addr global ptr null, align 8
@RDbf3 = dso_local local_unnamed_addr global ptr null, align 8
@IntVc1 = dso_local local_unnamed_addr global ptr null, align 8
@IntVc2 = dso_local local_unnamed_addr global ptr null, align 8
@IntCode3 = dso_local local_unnamed_addr global ptr null, align 8
@IntCode4 = dso_local local_unnamed_addr global ptr null, align 8
@IntCode5 = dso_local local_unnamed_addr global ptr null, align 8
@IntCode6 = dso_local local_unnamed_addr global ptr null, align 8
@Lom1 = dso_local local_unnamed_addr global ptr null, align 8
@Lom2 = dso_local local_unnamed_addr global ptr null, align 8
@Lom3 = dso_local local_unnamed_addr global ptr null, align 8
@Lom4 = dso_local local_unnamed_addr global ptr null, align 8
@Lom5 = dso_local local_unnamed_addr global ptr null, align 8
@Lom6 = dso_local local_unnamed_addr global ptr null, align 8
@Lom7 = dso_local local_unnamed_addr global ptr null, align 8
@Lom8 = dso_local local_unnamed_addr global ptr null, align 8
@Lom9 = dso_local local_unnamed_addr global ptr null, align 8
@Lom10 = dso_local local_unnamed_addr global ptr null, align 8
@RDbf11 = dso_local local_unnamed_addr global ptr null, align 8
@RDbf12 = dso_local local_unnamed_addr global ptr null, align 8
@Workspace = dso_local local_unnamed_addr global %struct.WorkEntrySType zeroinitializer, align 8
@MyPte = dso_local local_unnamed_addr global %struct.ShrPcPteSType zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @InitCache(i32 noundef %sessionId) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
