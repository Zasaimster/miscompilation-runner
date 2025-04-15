; 110227282170988361081656161057996996142
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/110227282170988361081656161057996996142_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/110227282170988361081656161057996996142.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f(i32 %n, i32 %x.coerce, i32 %y.coerce, i32 %z.coerce, i64 noundef %l) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @doNothing() #5
  %cmp.not = icmp eq i32 %call, 10
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  %0 = and i32 %x.coerce, 65280
  %cmp1.not = icmp eq i32 %0, 5120
  br i1 %cmp1.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @abort() #6
  unreachable

if.end4:                                          ; preds = %if.end
  %1 = and i32 %x.coerce, 16711680
  %cmp6.not = icmp eq i32 %1, 1966080
  br i1 %cmp6.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end4
  tail call void @abort() #6
  unreachable

if.end9:                                          ; preds = %if.end4
  %conv10.mask = and i32 %x.coerce, -16777216
  %cmp11.not = icmp eq i32 %conv10.mask, 671088640
  br i1 %cmp11.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end9
  tail call void @abort() #6
  unreachable

if.end14:                                         ; preds = %if.end9
  %sext.mask = and i32 %y.coerce, 255
  %cmp16.not = icmp eq i32 %sext.mask, 11
  br i1 %cmp16.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end14
  tail call void @abort() #6
  unreachable

if.end19:                                         ; preds = %if.end14
  %2 = and i32 %y.coerce, 65280
  %cmp22.not = icmp eq i32 %2, 5376
  br i1 %cmp22.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end19
  tail call void @abort() #6
  unreachable

if.end25:                                         ; preds = %if.end19
  %3 = and i32 %y.coerce, 16711680
  %cmp28.not = icmp eq i32 %3, 2031616
  br i1 %cmp28.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end25
  tail call void @abort() #6
  unreachable

if.end31:                                         ; preds = %if.end25
  %conv33.mask = and i32 %y.coerce, -16777216
  %cmp34.not = icmp eq i32 %conv33.mask, 687865856
  br i1 %cmp34.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end31
  tail call void @abort() #6
  unreachable

if.end37:                                         ; preds = %if.end31
  %sext.mask66 = and i32 %z.coerce, 255
  %cmp40.not = icmp eq i32 %sext.mask66, 12
  br i1 %cmp40.not, label %if.end43, label %if.then42

if.then42:                                        ; preds = %if.end37
  tail call void @abort() #6
  unreachable

if.end43:                                         ; preds = %if.end37
  %4 = and i32 %z.coerce, 65280
  %cmp46.not = icmp eq i32 %4, 5632
  br i1 %cmp46.not, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end43
  tail call void @abort() #6
  unreachable

if.end49:                                         ; preds = %if.end43
  %5 = and i32 %z.coerce, 16711680
  %cmp52.not = icmp eq i32 %5, 2097152
  br i1 %cmp52.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end49
  tail call void @abort() #6
  unreachable

if.end55:                                         ; preds = %if.end49
  %conv57.mask = and i32 %z.coerce, -16777216
  %cmp58.not = icmp eq i32 %conv57.mask, 704643072
  br i1 %cmp58.not, label %if.end61, label %if.then60

if.then60:                                        ; preds = %if.end55
  tail call void @abort() #6
  unreachable

if.end61:                                         ; preds = %if.end55
  %cmp62.not = icmp eq i64 %l, 123
  br i1 %cmp62.not, label %if.end65, label %if.then64

if.then64:                                        ; preds = %if.end61
  tail call void @abort() #6
  unreachable

if.end65:                                         ; preds = %if.end61
  ret i32 undef
}

declare i32 @doNothing(...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %call = tail call i32 @f(i32 poison, i32 673059850, i32 689902859, i32 706745868, i64 noundef 123)
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
