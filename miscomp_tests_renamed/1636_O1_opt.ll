; 129232327881723065935955156919008325365
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/129232327881723065935955156919008325365_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/129232327881723065935955156919008325365.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tmp = dso_local global ptr null, align 8
@c = dso_local local_unnamed_addr global ptr @tmp, align 8
@a = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@f = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Before Early Return\0A\00", align 1
@str = private unnamed_addr constant [19 x i8] c"After Early Return\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call11.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp12.i = icmp slt i32 %call11.i, 1
  br i1 %cmp12.i, label %for.cond1.preheader.i, label %fn1.exit

for.cond1.preheader.i:                            ; preds = %for.inc6.i, %entry
  %0 = load ptr, ptr @c, align 8, !tbaa !5
  br label %for.body3.i

for.body3.i:                                      ; preds = %if.end.i, %for.cond1.preheader.i
  %g.010.i = phi i32 [ 1, %for.cond1.preheader.i ], [ %dec.i, %if.end.i ]
  %1 = load volatile i32, ptr @d, align 4, !tbaa !11
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %lor.end.i

lor.rhs.i:                                        ; preds = %for.body3.i
  %2 = load volatile i32, ptr @d, align 4, !tbaa !11
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %for.body3.i
  store ptr @a, ptr %0, align 8, !tbaa !13
  %3 = load ptr, ptr @tmp, align 8, !tbaa !13
  %cmp5.not.i = icmp eq ptr %3, @a
  br i1 %cmp5.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %lor.end.i
  tail call void @abort() #4
  unreachable

if.end.i:                                         ; preds = %lor.end.i
  store volatile ptr null, ptr @tmp, align 8, !tbaa !13
  %dec.i = add nsw i32 %g.010.i, -1
  %cmp2.not.i = icmp eq i32 %g.010.i, 0
  br i1 %cmp2.not.i, label %for.inc6.i, label %for.body3.i, !llvm.loop !15

for.inc6.i:                                       ; preds = %if.end.i
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %for.cond1.preheader.i, label %fn1.exit, !llvm.loop !18

fn1.exit:                                         ; preds = %for.inc6.i, %entry
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p2 int", !7, i64 0}
!7 = !{!"any p2 pointer", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 int", !8, i64 0}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !16, !17}
