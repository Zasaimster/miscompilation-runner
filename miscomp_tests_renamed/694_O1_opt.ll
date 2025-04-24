; 11231000278475753421872950936112707718
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/11231000278475753421872950936112707718_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/11231000278475753421872950936112707718.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @dummy(ptr noundef readnone captures(none) %x, i32 noundef %y) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #1 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %cnt1.0 = phi i32 [ 0, %entry ], [ %cnt1.1, %for.inc ]
  %i.0 = phi i32 [ 8, %entry ], [ %dec, %for.inc ]
  %cnt0.0 = phi i32 [ 0, %entry ], [ %cnt0.1, %for.inc ]
  switch i32 %i.0, label %if.else [
    i32 0, label %for.end
    i32 1, label %if.then
  ]

if.then:                                          ; preds = %for.cond
  %inc = add nsw i32 %cnt0.0, 1
  br label %for.inc

if.else:                                          ; preds = %for.cond
  %inc3 = add nsw i32 %cnt1.0, 1
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %cnt1.1 = phi i32 [ %cnt1.0, %if.then ], [ %inc3, %if.else ]
  %cnt0.1 = phi i32 [ %inc, %if.then ], [ %cnt0.0, %if.else ]
  %dec = add nsw i32 %i.0, -1
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %cmp4 = icmp ne i32 %cnt0.0, 1
  %cmp5 = icmp ne i32 %cnt1.0, 7
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp5
  br i1 %or.cond, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.end
  tail call void @abort() #4
  unreachable

if.end7:                                          ; preds = %for.end
  tail call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
