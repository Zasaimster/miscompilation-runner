; 128157677592400301468049260746110454662
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/128157677592400301468049260746110454662.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/128157677592400301468049260746110454662.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @f(i32 noundef %n, i32 %x.coerce, i32 %y.coerce, i32 %z.coerce, i64 noundef %l) local_unnamed_addr #0 {
entry:
  %sext.mask = and i32 %x.coerce, 65535
  %cmp.not = icmp eq i32 %sext.mask, 10
  br i1 %cmp.not, label %for.cond.cleanup, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #4
  unreachable

for.cond.cleanup:                                 ; preds = %entry
  %conv4.mask = and i32 %x.coerce, -65536
  %cmp5.not = icmp eq i32 %conv4.mask, 1310720
  br i1 %cmp5.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %for.cond.cleanup
  tail call void @abort() #4
  unreachable

if.end8:                                          ; preds = %for.cond.cleanup
  %sext.mask38 = and i32 %y.coerce, 65535
  %cmp11.not = icmp eq i32 %sext.mask38, 11
  br i1 %cmp11.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end8
  tail call void @abort() #4
  unreachable

if.end14:                                         ; preds = %if.end8
  %conv16.mask = and i32 %y.coerce, -65536
  %cmp17.not = icmp eq i32 %conv16.mask, 1376256
  br i1 %cmp17.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end14
  tail call void @abort() #4
  unreachable

if.end20:                                         ; preds = %if.end14
  %sext.mask39 = and i32 %z.coerce, 65535
  %cmp23.not = icmp eq i32 %sext.mask39, 12
  br i1 %cmp23.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end20
  tail call void @abort() #4
  unreachable

if.end26:                                         ; preds = %if.end20
  %conv28.mask = and i32 %z.coerce, -65536
  %cmp29.not = icmp eq i32 %conv28.mask, 1441792
  br i1 %cmp29.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end26
  tail call void @abort() #4
  unreachable

if.end32:                                         ; preds = %if.end26
  %cmp33.not = icmp eq i64 %l, 123
  br i1 %cmp33.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.end32
  tail call void @abort() #4
  unreachable

if.end36:                                         ; preds = %if.end32
  ret i32 undef
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

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
