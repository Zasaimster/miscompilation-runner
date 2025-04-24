; 106320763389918327514552125020052789930
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/106320763389918327514552125020052789930_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/106320763389918327514552125020052789930.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @bar(i32 noundef %i, i32 noundef %j, i32 noundef %k, i64 %t.coerce0, i32 %t.coerce1) local_unnamed_addr #0 {
entry:
  %t.sroa.1.0.extract.shift.mask = and i64 %t.coerce0, -4294967296
  %cmp = icmp ne i64 %t.sroa.1.0.extract.shift.mask, 8589934592
  %cmp1 = icmp ne i32 %t.coerce1, 3
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  %cmp3 = icmp ne i32 %i, 4
  %or.cond8 = or i1 %cmp3, %or.cond
  %cmp5 = icmp ne i32 %j, 5
  %or.cond9 = or i1 %cmp5, %or.cond8
  %cmp7 = icmp ne i32 %k, 6
  %or.cond10 = or i1 %cmp7, %or.cond9
  br i1 %or.cond10, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  ret i32 undef
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @foo(i64 %t.coerce0, i32 %t.coerce1, i32 noundef %i, i32 noundef %j, i32 noundef %k) local_unnamed_addr #0 {
entry:
  %t.sroa.1.0.extract.shift.mask.i = and i64 %t.coerce0, -4294967296
  %cmp.i = icmp ne i64 %t.sroa.1.0.extract.shift.mask.i, 8589934592
  %cmp1.i = icmp ne i32 %t.coerce1, 3
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp1.i
  %cmp3.i = icmp ne i32 %i, 4
  %or.cond8.i = or i1 %cmp3.i, %or.cond.i
  %cmp5.i = icmp ne i32 %j, 5
  %or.cond9.i = or i1 %cmp5.i, %or.cond8.i
  %cmp7.i = icmp ne i32 %k, 6
  %or.cond10.i = or i1 %cmp7.i, %or.cond9.i
  br i1 %or.cond10.i, label %if.then.i, label %bar.exit

if.then.i:                                        ; preds = %entry
  tail call void @abort() #4
  unreachable

bar.exit:                                         ; preds = %entry
  ret i32 undef
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
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
