; 119237852471731653661334742467002719298
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/119237852471731653661334742467002719298_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/119237852471731653661334742467002719298.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @f(i32 noundef %n, i32 %x.coerce, i32 %y.coerce, i32 %z.coerce, i64 noundef %l) local_unnamed_addr #0 {
entry:
  %conv.mask = and i32 %x.coerce, -65536
  %cmp.not = icmp eq i32 %conv.mask, 1310720
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %sext.mask = and i32 %y.coerce, 65535
  %cmp3.not = icmp eq i32 %sext.mask, 11
  br i1 %cmp3.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  tail call void @abort() #4
  unreachable

if.end6:                                          ; preds = %if.end
  %conv8.mask = and i32 %y.coerce, -65536
  %cmp9.not = icmp eq i32 %conv8.mask, 1376256
  br i1 %cmp9.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end6
  tail call void @abort() #4
  unreachable

if.end12:                                         ; preds = %if.end6
  %sext.mask29 = and i32 %z.coerce, 65535
  %cmp15.not = icmp eq i32 %sext.mask29, 12
  br i1 %cmp15.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end12
  tail call void @abort() #4
  unreachable

if.end18:                                         ; preds = %if.end12
  %conv20.mask = and i32 %z.coerce, -65536
  %cmp21.not = icmp eq i32 %conv20.mask, 1441792
  br i1 %cmp21.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end18
  tail call void @abort() #4
  unreachable

if.end24:                                         ; preds = %if.end18
  %cmp25.not = icmp eq i64 %l, 123
  br i1 %cmp25.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end24
  tail call void @abort() #4
  unreachable

if.end28:                                         ; preds = %if.end24
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
