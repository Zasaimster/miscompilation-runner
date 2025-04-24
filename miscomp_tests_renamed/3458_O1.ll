; 160585415547171295534659825761781635974
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/160585415547171295534659825761781635974.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/160585415547171295534659825761781635974.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @add(i32 %a, i32 noundef %b, i32 noundef %c, i32 noundef %d, i32 noundef %e, i32 noundef %f, i32 noundef %g, i32 noundef %h, i32 noundef %i, i32 noundef %j, i32 noundef %k, i32 noundef %l, i32 noundef %m) local_unnamed_addr #0 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %entry
  %accumulator.tr = phi i32 [ 0, %entry ], [ %add11, %tailrecurse ]
  %b.tr = phi i32 [ %b, %entry ], [ 2, %tailrecurse ]
  %c.tr = phi i32 [ %c, %entry ], [ 3, %tailrecurse ]
  %d.tr = phi i32 [ %d, %entry ], [ 4, %tailrecurse ]
  %e.tr = phi i32 [ %e, %entry ], [ 5, %tailrecurse ]
  %f.tr = phi i32 [ %f, %entry ], [ 6, %tailrecurse ]
  %g.tr = phi i32 [ %g, %entry ], [ 7, %tailrecurse ]
  %h.tr = phi i32 [ %h, %entry ], [ 8, %tailrecurse ]
  %i.tr = phi i32 [ %i, %entry ], [ 9, %tailrecurse ]
  %j.tr = phi i32 [ %j, %entry ], [ 10, %tailrecurse ]
  %k.tr = phi i32 [ %k, %entry ], [ 11, %tailrecurse ]
  %l.tr = phi i32 [ %l, %entry ], [ 12, %tailrecurse ]
  %m.tr = phi i32 [ %m, %entry ], [ 13, %tailrecurse ]
  %add = add i32 %c.tr, %b.tr
  %add1 = add i32 %add, %d.tr
  %add2 = add i32 %add1, %e.tr
  %add3 = add i32 %add2, %f.tr
  %add4 = add i32 %add3, %g.tr
  %add5 = add i32 %add4, %h.tr
  %add6 = add i32 %add5, %i.tr
  %add7 = add i32 %add6, %j.tr
  %add8 = add i32 %add7, %k.tr
  %add9 = add i32 %add8, %l.tr
  %add10 = add i32 %add9, %m.tr
  %add11 = add i32 %add10, %accumulator.tr
  br label %tailrecurse
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %call = tail call i32 @add(i32 poison, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13)
  %cmp.not = icmp eq i32 %call, 91
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  tail call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

attributes #0 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
