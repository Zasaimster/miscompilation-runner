; 148170284690433536208525951708199095144
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/148170284690433536208525951708199095144.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/148170284690433536208525951708199095144.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @f(i32 noundef %n, i32 %x.coerce, i32 %y.coerce, i32 %z.coerce, i64 noundef %l) local_unnamed_addr #0 {
entry:
  %0 = and i32 %x.coerce, 65280
  %cmp.not = icmp eq i32 %0, 5120
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %1 = and i32 %x.coerce, 16711680
  %cmp3.not = icmp eq i32 %1, 1966080
  br i1 %cmp3.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  tail call void @abort() #4
  unreachable

if.end6:                                          ; preds = %if.end
  %conv7.mask = and i32 %x.coerce, -16777216
  %cmp8.not = icmp eq i32 %conv7.mask, 671088640
  br i1 %cmp8.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end6
  tail call void @abort() #4
  unreachable

if.end11:                                         ; preds = %if.end6
  %sext.mask = and i32 %y.coerce, 255
  %cmp13.not = icmp eq i32 %sext.mask, 11
  br i1 %cmp13.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end11
  tail call void @abort() #4
  unreachable

if.end16:                                         ; preds = %if.end11
  %2 = and i32 %y.coerce, 65280
  %cmp19.not = icmp eq i32 %2, 5376
  br i1 %cmp19.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end16
  tail call void @abort() #4
  unreachable

if.end22:                                         ; preds = %if.end16
  %3 = and i32 %y.coerce, 16711680
  %cmp25.not = icmp eq i32 %3, 2031616
  br i1 %cmp25.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end22
  tail call void @abort() #4
  unreachable

if.end28:                                         ; preds = %if.end22
  %conv30.mask = and i32 %y.coerce, -16777216
  %cmp31.not = icmp eq i32 %conv30.mask, 687865856
  br i1 %cmp31.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end28
  tail call void @abort() #4
  unreachable

if.end34:                                         ; preds = %if.end28
  %sext.mask63 = and i32 %z.coerce, 255
  %cmp37.not = icmp eq i32 %sext.mask63, 12
  br i1 %cmp37.not, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.end34
  tail call void @abort() #4
  unreachable

if.end40:                                         ; preds = %if.end34
  %4 = and i32 %z.coerce, 65280
  %cmp43.not = icmp eq i32 %4, 5632
  br i1 %cmp43.not, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end40
  tail call void @abort() #4
  unreachable

if.end46:                                         ; preds = %if.end40
  %5 = and i32 %z.coerce, 16711680
  %cmp49.not = icmp eq i32 %5, 2097152
  br i1 %cmp49.not, label %if.end52, label %if.then51

if.then51:                                        ; preds = %if.end46
  tail call void @abort() #4
  unreachable

if.end52:                                         ; preds = %if.end46
  %conv54.mask = and i32 %z.coerce, -16777216
  %cmp55.not = icmp eq i32 %conv54.mask, 704643072
  br i1 %cmp55.not, label %if.end58, label %if.then57

if.then57:                                        ; preds = %if.end52
  tail call void @abort() #4
  unreachable

if.end58:                                         ; preds = %if.end52
  %cmp59.not = icmp eq i64 %l, 123
  br i1 %cmp59.not, label %if.end62, label %if.then61

if.then61:                                        ; preds = %if.end58
  tail call void @abort() #4
  unreachable

if.end62:                                         ; preds = %if.end58
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
