; 110091157494272056710423338646571328603
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/110091157494272056710423338646571328603.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/110091157494272056710423338646571328603.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @ieq(i32 noundef %x, i32 noundef %y, i32 noundef %ok) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (i32, ...) @calculateSquare(i32 noundef 4) #4
  %tobool.not = icmp eq i32 %call, 0
  %cmp.not = icmp slt i32 %x, %y
  %or.cond = or i1 %cmp.not, %tobool.not
  %tobool3.not = icmp eq i32 %ok, 0
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool3.not, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.then
  tail call void @abort() #5
  unreachable

if.else:                                          ; preds = %entry
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.else
  tail call void @abort() #5
  unreachable

if.end6:                                          ; preds = %if.else, %if.then
  %cmp9 = icmp eq i32 %x, %y
  %tobool11.not = icmp eq i32 %ok, 0
  br i1 %cmp9, label %if.then10, label %if.else14

if.then10:                                        ; preds = %if.end6
  br i1 %tobool11.not, label %if.then12, label %if.end18

if.then12:                                        ; preds = %if.then10
  tail call void @abort() #5
  unreachable

if.else14:                                        ; preds = %if.end6
  br i1 %tobool11.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.else14
  tail call void @abort() #5
  unreachable

if.end18:                                         ; preds = %if.else14, %if.then10
  %or.cond63.not = icmp eq i32 %x, %y
  %tobool23.not = icmp eq i32 %ok, 0
  br i1 %or.cond63.not, label %if.then22, label %if.else26

if.then22:                                        ; preds = %if.end18
  br i1 %tobool23.not, label %if.then24, label %if.end30

if.then24:                                        ; preds = %if.then22
  tail call void @abort() #5
  unreachable

if.else26:                                        ; preds = %if.end18
  br i1 %tobool23.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.else26
  tail call void @abort() #5
  unreachable

if.end30:                                         ; preds = %if.else26, %if.then22
  %tobool35.not = icmp eq i32 %ok, 0
  br i1 %cmp9, label %if.then34, label %if.else38

if.then34:                                        ; preds = %if.end30
  br i1 %tobool35.not, label %if.then36, label %if.end42

if.then36:                                        ; preds = %if.then34
  tail call void @abort() #5
  unreachable

if.else38:                                        ; preds = %if.end30
  br i1 %tobool35.not, label %if.end42, label %if.then40

if.then40:                                        ; preds = %if.else38
  tail call void @abort() #5
  unreachable

if.end42:                                         ; preds = %if.else38, %if.then34
  ret i32 undef
}

declare i32 @calculateSquare(...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ine(i32 noundef %x, i32 noundef %y, i32 noundef %ok) local_unnamed_addr #3 {
entry:
  %or.cond.not = icmp eq i32 %x, %y
  %tobool3.not = icmp eq i32 %ok, 0
  br i1 %or.cond.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool3.not, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.then
  tail call void @abort() #5
  unreachable

if.else:                                          ; preds = %entry
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.else
  tail call void @abort() #5
  unreachable

if.end6:                                          ; preds = %if.else, %if.then
  ret i32 undef
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ilt(i32 noundef %x, i32 noundef %y, i32 noundef %ok) local_unnamed_addr #3 {
entry:
  %cmp = icmp slt i32 %x, %y
  %tobool.not = icmp eq i32 %ok, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.then
  tail call void @abort() #5
  unreachable

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.else
  tail call void @abort() #5
  unreachable

if.end6:                                          ; preds = %if.else, %if.then
  ret i32 undef
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ile(i32 noundef %x, i32 noundef %y, i32 noundef %ok) local_unnamed_addr #3 {
entry:
  %or.cond.not = icmp sgt i32 %x, %y
  %tobool3.not = icmp eq i32 %ok, 0
  br i1 %or.cond.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool3.not, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.then
  tail call void @abort() #5
  unreachable

if.else:                                          ; preds = %entry
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.else
  tail call void @abort() #5
  unreachable

if.end6:                                          ; preds = %if.else, %if.then
  ret i32 undef
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @igt(i32 noundef %x, i32 noundef %y, i32 noundef %ok) local_unnamed_addr #3 {
entry:
  %cmp = icmp sgt i32 %x, %y
  %tobool.not = icmp eq i32 %ok, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.then
  tail call void @abort() #5
  unreachable

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.else
  tail call void @abort() #5
  unreachable

if.end6:                                          ; preds = %if.else, %if.then
  ret i32 undef
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ige(i32 noundef %x, i32 noundef %y, i32 noundef %ok) local_unnamed_addr #3 {
entry:
  %or.cond.not = icmp slt i32 %x, %y
  %tobool3.not = icmp eq i32 %ok, 0
  br i1 %or.cond.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool3.not, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.then
  tail call void @abort() #5
  unreachable

if.else:                                          ; preds = %entry
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.else
  tail call void @abort() #5
  unreachable

if.end6:                                          ; preds = %if.else, %if.then
  ret i32 undef
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (i32, ...) @calculateSquare(i32 noundef 4) #4
  %call.i18 = tail call i32 (i32, ...) @calculateSquare(i32 noundef 4) #4
  %tobool.not.i19 = icmp eq i32 %call.i18, 0
  br i1 %tobool.not.i19, label %if.else.i, label %ieq.exit

if.else.i:                                        ; preds = %entry
  tail call void @abort() #5
  unreachable

ieq.exit:                                         ; preds = %entry
  %call.i20 = tail call i32 (i32, ...) @calculateSquare(i32 noundef 4) #4
  %tobool.not.i21 = icmp eq i32 %call.i20, 0
  br i1 %tobool.not.i21, label %ieq.exit23, label %if.then.i

if.then.i:                                        ; preds = %ieq.exit
  tail call void @abort() #5
  unreachable

ieq.exit23:                                       ; preds = %ieq.exit
  ret i32 0
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
