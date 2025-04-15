; 149961142762239312922800456265664618519
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/149961142762239312922800456265664618519_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/149961142762239312922800456265664618519.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @f(ptr noundef readnone captures(address) %x, ptr noundef readnone captures(address) %y) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq ptr %x, %y
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  ret i32 undef
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc58, %entry
  %i.095 = phi i32 [ 0, %entry ], [ %inc59, %for.inc58 ]
  %0 = shl nuw nsw i32 %i.095, 6
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc55, %for.cond1.preheader
  %j.094 = phi i32 [ %i.095, %for.cond1.preheader ], [ %inc56, %for.inc55 ]
  %cmp10 = icmp eq i32 %j.094, %i.095
  %1 = shl nuw nsw i32 %j.094, 6
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.inc52, %for.cond4.preheader
  %ki.093 = phi i32 [ 0, %for.cond4.preheader ], [ %inc53, %for.inc52 ]
  %2 = shl nuw nsw i32 %ki.093, 5
  %x.offs90 = add nuw nsw i32 %2, %0
  br label %for.body9

for.body9:                                        ; preds = %for.inc49, %for.cond7.preheader
  %kj.092 = phi i32 [ 0, %for.cond7.preheader ], [ %inc50, %for.inc49 ]
  %cmp11 = icmp eq i32 %ki.093, %kj.092
  %or.cond = and i1 %cmp10, %cmp11
  br i1 %or.cond, label %for.inc49, label %for.body23

for.body23:                                       ; preds = %for.body9
  %3 = shl nuw nsw i32 %kj.092, 5
  %x34.offs91 = add nuw nsw i32 %3, %1
  %cmp.i = icmp eq i32 %x.offs90, %x34.offs91
  br i1 %cmp.i, label %if.then.i, label %for.inc49

if.then.i:                                        ; preds = %for.body23
  tail call void @abort() #4
  unreachable

for.inc49:                                        ; preds = %for.body23, %for.body9
  %inc50 = add nuw nsw i32 %kj.092, 1
  %cmp8 = icmp eq i32 %kj.092, 0
  br i1 %cmp8, label %for.body9, label %for.inc52, !llvm.loop !5

for.inc52:                                        ; preds = %for.inc49
  %inc53 = add nuw nsw i32 %ki.093, 1
  %cmp5 = icmp eq i32 %ki.093, 0
  br i1 %cmp5, label %for.cond7.preheader, label %for.inc55, !llvm.loop !8

for.inc55:                                        ; preds = %for.inc52
  %inc56 = add nuw nsw i32 %j.094, 1
  %exitcond.not = icmp eq i32 %inc56, 4
  br i1 %exitcond.not, label %for.inc58, label %for.cond4.preheader, !llvm.loop !9

for.inc58:                                        ; preds = %for.inc55
  %inc59 = add nuw nsw i32 %i.095, 1
  %exitcond96.not = icmp eq i32 %inc59, 4
  br i1 %exitcond96.not, label %for.end60, label %for.cond1.preheader, !llvm.loop !10

for.end60:                                        ; preds = %for.inc58
  tail call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
!8 = distinct !{!8, !6, !7}
!9 = distinct !{!9, !6, !7}
!10 = distinct !{!10, !6, !7}
