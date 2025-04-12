; 189725745637314109968146741384898591609
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/189725745637314109968146741384898591609_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/189725745637314109968146741384898591609.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ieq(i32 noundef %x, i32 noundef %y, i32 noundef %ok) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp slt i32 %x, %y
  %tobool2.not = icmp eq i32 %ok, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool2.not, label %if.then1, label %if.end5

if.then1:                                         ; preds = %if.then
  tail call void @abort() #3
  unreachable

if.else:                                          ; preds = %entry
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.else
  tail call void @abort() #3
  unreachable

if.end5:                                          ; preds = %if.else, %if.then
  %cmp7 = icmp eq i32 %x, %y
  %tobool9.not = icmp eq i32 %ok, 0
  br i1 %cmp7, label %if.then8, label %if.else12

if.then8:                                         ; preds = %if.end5
  br i1 %tobool9.not, label %if.then10, label %if.end16

if.then10:                                        ; preds = %if.then8
  tail call void @abort() #3
  unreachable

if.else12:                                        ; preds = %if.end5
  br i1 %tobool9.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.else12
  tail call void @abort() #3
  unreachable

if.end16:                                         ; preds = %if.else12, %if.then8
  %brmerge.not = icmp eq i32 %x, %y
  %tobool21.not = icmp eq i32 %ok, 0
  br i1 %brmerge.not, label %if.then20, label %if.else24

if.then20:                                        ; preds = %if.end16
  br i1 %tobool21.not, label %if.then22, label %if.end28

if.then22:                                        ; preds = %if.then20
  tail call void @abort() #3
  unreachable

if.else24:                                        ; preds = %if.end16
  br i1 %tobool21.not, label %if.end28, label %if.then26

if.then26:                                        ; preds = %if.else24
  tail call void @abort() #3
  unreachable

if.end28:                                         ; preds = %if.else24, %if.then20
  %tobool33.not = icmp eq i32 %ok, 0
  br i1 %cmp7, label %if.then32, label %if.else36

if.then32:                                        ; preds = %if.end28
  br i1 %tobool33.not, label %if.then34, label %if.end40

if.then34:                                        ; preds = %if.then32
  tail call void @abort() #3
  unreachable

if.else36:                                        ; preds = %if.end28
  br i1 %tobool33.not, label %if.end40, label %if.then38

if.then38:                                        ; preds = %if.else36
  tail call void @abort() #3
  unreachable

if.end40:                                         ; preds = %if.else36, %if.then32
  ret i32 undef
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ine(i32 noundef %x, i32 noundef %y, i32 noundef %ok) local_unnamed_addr #0 {
entry:
  %or.cond.not = icmp eq i32 %x, %y
  %tobool3.not = icmp eq i32 %ok, 0
  br i1 %or.cond.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool3.not, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.then
  tail call void @abort() #3
  unreachable

if.else:                                          ; preds = %entry
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.else
  tail call void @abort() #3
  unreachable

if.end6:                                          ; preds = %if.else, %if.then
  ret i32 undef
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ilt(i32 noundef %x, i32 noundef %y, i32 noundef %ok) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %x, %y
  %tobool.not = icmp eq i32 %ok, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.then
  tail call void @abort() #3
  unreachable

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.else
  tail call void @abort() #3
  unreachable

if.end6:                                          ; preds = %if.else, %if.then
  ret i32 undef
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ile(i32 noundef %x, i32 noundef %y, i32 noundef %ok) local_unnamed_addr #0 {
entry:
  %or.cond.not = icmp sgt i32 %x, %y
  %tobool3.not = icmp eq i32 %ok, 0
  br i1 %or.cond.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool3.not, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.then
  tail call void @abort() #3
  unreachable

if.else:                                          ; preds = %entry
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.else
  tail call void @abort() #3
  unreachable

if.end6:                                          ; preds = %if.else, %if.then
  ret i32 undef
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @igt(i32 noundef %x, i32 noundef %y, i32 noundef %ok) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %x, %y
  %tobool.not = icmp eq i32 %ok, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.then
  tail call void @abort() #3
  unreachable

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.else
  tail call void @abort() #3
  unreachable

if.end6:                                          ; preds = %if.else, %if.then
  ret i32 undef
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ige(i32 noundef %x, i32 noundef %y, i32 noundef %ok) local_unnamed_addr #0 {
entry:
  %or.cond.not = icmp slt i32 %x, %y
  %tobool3.not = icmp eq i32 %ok, 0
  br i1 %or.cond.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool3.not, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.then
  tail call void @abort() #3
  unreachable

if.else:                                          ; preds = %entry
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.else
  tail call void @abort() #3
  unreachable

if.end6:                                          ; preds = %if.else, %if.then
  ret i32 undef
}

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  tail call void @abort() #3
  unreachable
}

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
