; 113880939960581047750506491760148828567
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/113880939960581047750506491760148828567.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/113880939960581047750506491760148828567.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str = private unnamed_addr constant [14 x i8] c"Hello, World!\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 30, 32) i32 @foo(i32 noundef %x) local_unnamed_addr #0 {
entry:
  %switch.tableidx = add i32 %x, -4
  %0 = icmp ult i32 %switch.tableidx, 8
  br i1 %0, label %switch.hole_check, label %sw.epilog

sw.epilog:                                        ; preds = %switch.hole_check, %entry
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %return

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc nuw i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -91, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  br i1 %switch.lobit, label %return, label %sw.epilog

return:                                           ; preds = %switch.hole_check, %sw.epilog
  %retval.0 = phi i32 [ 31, %sw.epilog ], [ 30, %switch.hole_check ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.039 = phi i32 [ -1, %entry ], [ %inc, %for.inc ]
  %switch.tableidx = add i32 %i.039, -4
  %0 = icmp ult i32 %switch.tableidx, 8
  br i1 %0, label %switch.hole_check, label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.hole_check, %for.body
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %foo.exit

switch.hole_check:                                ; preds = %for.body
  %switch.maskindex = trunc nuw i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -91, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  br i1 %switch.lobit, label %foo.exit, label %sw.epilog.i

foo.exit:                                         ; preds = %switch.hole_check, %sw.epilog.i
  %cmp18.not = phi i1 [ false, %sw.epilog.i ], [ true, %switch.hole_check ]
  %cmp22.not = phi i1 [ true, %sw.epilog.i ], [ false, %switch.hole_check ]
  switch i32 %i.039, label %if.else21 [
    i32 4, label %if.then
    i32 6, label %if.then5
    i32 9, label %if.then11
    i32 11, label %if.then17
  ]

if.then:                                          ; preds = %foo.exit
  br i1 %cmp18.not, label %for.inc, label %if.then3

if.then3:                                         ; preds = %if.then
  tail call void @abort() #3
  unreachable

if.then5:                                         ; preds = %foo.exit
  br i1 %cmp18.not, label %for.inc, label %if.then7

if.then7:                                         ; preds = %if.then5
  tail call void @abort() #3
  unreachable

if.then11:                                        ; preds = %foo.exit
  br i1 %cmp18.not, label %for.inc, label %if.then13

if.then13:                                        ; preds = %if.then11
  tail call void @abort() #3
  unreachable

if.then17:                                        ; preds = %foo.exit
  br i1 %cmp18.not, label %for.inc, label %if.then19

if.then19:                                        ; preds = %if.then17
  tail call void @abort() #3
  unreachable

if.else21:                                        ; preds = %foo.exit
  br i1 %cmp22.not, label %for.inc, label %if.then23

if.then23:                                        ; preds = %if.else21
  tail call void @abort() #3
  unreachable

for.inc:                                          ; preds = %if.then, %if.then11, %if.else21, %if.then17, %if.then5
  %inc = add nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc, 66
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !5

for.end:                                          ; preds = %for.inc
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
