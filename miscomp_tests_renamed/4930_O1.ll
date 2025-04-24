; 187056912110996325640402897660990557779
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/187056912110996325640402897660990557779.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/187056912110996325640402897660990557779.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"Main function executed.\0A\00", align 1
@str.1 = private unnamed_addr constant [24 x i8] c"Main function executed.\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @doit(i32 noundef %sel, i32 noundef %n, ptr noundef captures(none) %p) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @printHello() #6
  %conv = sext i32 %call to i64
  %0 = inttoptr i64 %conv to ptr
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv2 = sext i32 %call1 to i64
  %1 = inttoptr i64 %conv2 to ptr
  switch i32 %sel, label %sw.default [
    i32 0, label %do.body.preheader
    i32 1, label %do.body5.preheader
    i32 2, label %do.body14.preheader
  ]

do.body14.preheader:                              ; preds = %entry
  %p.promoted = load i64, ptr %p, align 8, !tbaa !5
  br label %do.body14

do.body5.preheader:                               ; preds = %entry
  %.promoted = load i64, ptr %1, align 8, !tbaa !9
  br label %do.body5

do.body.preheader:                                ; preds = %entry
  %.promoted35 = load i32, ptr %0, align 4, !tbaa !11
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.body
  %2 = phi i32 [ %add, %do.body ], [ %.promoted35, %do.body.preheader ]
  %n.addr.0 = phi i32 [ %dec, %do.body ], [ %n, %do.body.preheader ]
  %add = shl nsw i32 %2, 1
  %dec = add nsw i32 %n.addr.0, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end, label %do.body, !llvm.loop !13

do.end:                                           ; preds = %do.body
  store i32 %add, ptr %0, align 4, !tbaa !11
  %cmp = icmp eq i32 %2, 0
  br label %cleanup

do.body5:                                         ; preds = %do.body5.preheader, %do.body5
  %3 = phi i64 [ %add6, %do.body5 ], [ %.promoted, %do.body5.preheader ]
  %n.addr.1 = phi i32 [ %dec8, %do.body5 ], [ %n, %do.body5.preheader ]
  %add6 = shl nsw i64 %3, 1
  %dec8 = add nsw i32 %n.addr.1, -1
  %tobool9.not = icmp eq i32 %dec8, 0
  br i1 %tobool9.not, label %do.end10, label %do.body5, !llvm.loop !16

do.end10:                                         ; preds = %do.body5
  store i64 %add6, ptr %1, align 8, !tbaa !9
  %cmp11 = icmp eq i64 %3, 0
  br label %cleanup

do.body14:                                        ; preds = %do.body14.preheader, %do.body14
  %add1534 = phi i64 [ %add15, %do.body14 ], [ %p.promoted, %do.body14.preheader ]
  %n.addr.2 = phi i32 [ %dec17, %do.body14 ], [ %n, %do.body14.preheader ]
  %add15 = shl nsw i64 %add1534, 1
  %dec17 = add nsw i32 %n.addr.2, -1
  %tobool18.not = icmp eq i32 %dec17, 0
  br i1 %tobool18.not, label %do.end19, label %do.body14, !llvm.loop !17

do.end19:                                         ; preds = %do.body14
  store i64 %add15, ptr %p, align 8, !tbaa !5
  %cmp20 = icmp eq i64 %add1534, 0
  br label %cleanup

sw.default:                                       ; preds = %entry
  tail call void @abort() #7
  unreachable

cleanup:                                          ; preds = %do.end19, %do.end10, %do.end
  %retval.0.in = phi i1 [ %cmp20, %do.end19 ], [ %cmp11, %do.end10 ], [ %cmp, %do.end ]
  %retval.0 = zext i1 %retval.0.in to i32
  ret i32 %retval.0
}

declare i32 @printHello(...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
entry:
  %call.i = tail call i32 (...) @printHello() #6
  %conv.i = sext i32 %call.i to i64
  %0 = inttoptr i64 %conv.i to ptr
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %.promoted35.i = load i32, ptr %0, align 4, !tbaa !11
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %entry
  %1 = phi i32 [ %add.i, %do.body.i ], [ %.promoted35.i, %entry ]
  %n.addr.0.i = phi i32 [ %dec.i, %do.body.i ], [ 5, %entry ]
  %add.i = shl nsw i32 %1, 1
  %dec.i = add nsw i32 %n.addr.0.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %doit.exit, label %do.body.i, !llvm.loop !13

doit.exit:                                        ; preds = %do.body.i
  store i32 %add.i, ptr %0, align 4, !tbaa !11
  %call.i9 = tail call i32 (...) @printHello() #6
  %call1.i11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv2.i12 = sext i32 %call1.i11 to i64
  %2 = inttoptr i64 %conv2.i12 to ptr
  %.promoted.i = load i64, ptr %2, align 8, !tbaa !9
  br label %do.body5.i

do.body5.i:                                       ; preds = %do.body5.i, %doit.exit
  %3 = phi i64 [ %add6.i, %do.body5.i ], [ %.promoted.i, %doit.exit ]
  %n.addr.1.i = phi i32 [ %dec8.i, %do.body5.i ], [ 5, %doit.exit ]
  %add6.i = shl nsw i64 %3, 1
  %dec8.i = add nsw i32 %n.addr.1.i, -1
  %tobool9.not.i = icmp eq i32 %dec8.i, 0
  br i1 %tobool9.not.i, label %doit.exit14, label %do.body5.i, !llvm.loop !16

doit.exit14:                                      ; preds = %do.body5.i
  store i64 %add6.i, ptr %2, align 8, !tbaa !9
  %call.i15 = tail call i32 (...) @printHello() #6
  %puts22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  tail call void @abort() #7
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !14, !15}
!17 = distinct !{!17, !14, !15}
