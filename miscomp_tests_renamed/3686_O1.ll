; 16441752582182152639964654016122262835
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/16441752582182152639964654016122262835.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/16441752582182152639964654016122262835.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"Main function executed.\0A\00", align 1
@a = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i16 0, align 2
@d = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @printHello() #3
  %0 = zext i32 %call to i64
  %vla = alloca i32, i64 %0, align 16
  %call112 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp13 = icmp slt i32 %call112, 2
  br i1 %cmp13, label %for.body, label %for.end11

for.body:                                         ; preds = %entry, %for.inc
  store i32 0, ptr @a, align 4, !tbaa !5
  %1 = load i16, ptr @b, align 2, !tbaa !9
  %cmp2 = icmp eq i16 %1, 28378
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %idxprom = zext nneg i16 %1 to i64
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  store i32 %2, ptr @a, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = load i32, ptr @d, align 4, !tbaa !5
  %tobool = icmp ne i32 %3, 0
  %tobool5 = icmp ne i16 %1, 0
  %or.cond = or i1 %tobool5, %tobool
  %4 = load i32, ptr @c, align 4
  %tobool8.not = icmp eq i32 %4, 0
  %or.cond14 = select i1 %or.cond, i1 true, i1 %tobool8.not
  br i1 %or.cond14, label %for.inc, label %for.cond7, !llvm.loop !11

for.cond7:                                        ; preds = %if.end, %for.cond7
  br label %for.cond7

for.inc:                                          ; preds = %if.end
  %inc = add i16 %1, 1
  store i16 %inc, ptr @b, align 2, !tbaa !9
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp = icmp slt i32 %call1, 2
  br i1 %cmp, label %for.body, label %for.end11, !llvm.loop !14

for.end11:                                        ; preds = %for.inc, %entry
  ret i32 0
}

declare i32 @printHello(...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
