; 174111284427177304969201599108989067492
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/174111284427177304969201599108989067492.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/174111284427177304969201599108989067492.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PT = type { [4 x i64], i64, i64, i64 }

@cases = dso_local local_unnamed_addr global [9 x %struct.PT] [%struct.PT { [4 x i64] [i64 73400320, i64 262144, i64 805567999, i64 -1], i64 1, i64 2, i64 1 }, %struct.PT { [4 x i64] [i64 879754751, i64 262144, i64 262144, i64 805567999], i64 2, i64 3, i64 2 }, %struct.PT { [4 x i64] [i64 879754751, i64 805567999, i64 262144, i64 805567999], i64 1, i64 3, i64 2 }, %struct.PT { [4 x i64] [i64 879754751, i64 805830143, i64 524288, i64 -1], i64 1, i64 2, i64 1 }, %struct.PT { [4 x i64] [i64 879754751, i64 805830143, i64 1048576, i64 805830143], i64 1, i64 3, i64 1 }, %struct.PT { [4 x i64] [i64 879754751, i64 805830143, i64 262144, i64 262144], i64 1, i64 3, i64 1 }, %struct.PT { [4 x i64] [i64 73400320, i64 807403007, i64 807403007, i64 -1], i64 1, i64 2, i64 1 }, %struct.PT { [4 x i64] [i64 839122431, i64 2097152, i64 807403007, i64 -1], i64 0, i64 2, i64 1 }, %struct.PT { [4 x i64] [i64 67108864, i64 807403007, i64 134217728, i64 -1], i64 0, i64 2, i64 0 }], align 16
@.str = private unnamed_addr constant [21 x i8] c"cases[%d].c[%d]=%ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"cases[%d].b=%ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"cases[%d].e=%ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"cases[%d].k=%ld\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %entry, %for.end
  %indvars.iv38 = phi i64 [ 0, %entry ], [ %indvars.iv.next39, %for.end ]
  %arrayidx = getelementptr inbounds nuw [9 x %struct.PT], ptr @cases, i64 0, i64 %indvars.iv38
  %0 = trunc nuw nsw i64 %indvars.iv38 to i32
  br label %for.body6

for.body6:                                        ; preds = %for.cond2.preheader, %for.body6
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %for.body6 ]
  %arrayidx8 = getelementptr inbounds nuw [4 x i64], ptr %arrayidx, i64 0, i64 %indvars.iv
  %1 = load i64, ptr %arrayidx8, align 8, !tbaa !5
  %2 = trunc nuw nsw i64 %indvars.iv to i32
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %0, i32 noundef %2, i64 noundef %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.end, label %for.body6, !llvm.loop !9

for.end:                                          ; preds = %for.body6
  %arrayidx10 = getelementptr inbounds nuw [9 x %struct.PT], ptr @cases, i64 0, i64 %indvars.iv38
  %b = getelementptr inbounds nuw i8, ptr %arrayidx10, i64 32
  %3 = load i64, ptr %b, align 8, !tbaa !12
  %4 = trunc nuw nsw i64 %indvars.iv38 to i32
  %call11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %4, i64 noundef %3)
  %e = getelementptr inbounds nuw i8, ptr %arrayidx10, i64 40
  %5 = load i64, ptr %e, align 8, !tbaa !14
  %6 = trunc nuw nsw i64 %indvars.iv38 to i32
  %call14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %6, i64 noundef %5)
  %k = getelementptr inbounds nuw i8, ptr %arrayidx10, i64 48
  %7 = load i64, ptr %k, align 8, !tbaa !15
  %8 = trunc nuw nsw i64 %indvars.iv38 to i32
  %call17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %8, i64 noundef %7)
  %putchar = tail call i32 @putchar(i32 10)
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %exitcond41.not = icmp eq i64 %indvars.iv.next39, 9
  br i1 %exitcond41.not, label %for.end21, label %for.cond2.preheader, !llvm.loop !16

for.end21:                                        ; preds = %for.end
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !6, i64 32}
!13 = !{!"", !7, i64 0, !6, i64 32, !6, i64 40, !6, i64 48}
!14 = !{!13, !6, i64 40}
!15 = !{!13, !6, i64 48}
!16 = distinct !{!16, !10, !11}
