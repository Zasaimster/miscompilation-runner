; 144297088976012178672183175286839552127
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/144297088976012178672183175286839552127.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/144297088976012178672183175286839552127.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str = private unnamed_addr constant [19 x i8] c"After Early Return\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ieq(i32 noundef %x, i32 noundef %y, i32 noundef %ok) local_unnamed_addr #0 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %cmp1 = icmp eq i32 %x, %y
  %tobool.not = icmp eq i32 %ok, 0
  br i1 %cmp1, label %if.then, label %if.else

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
  %or.cond46.not = icmp eq i32 %y, %x
  %tobool11.not = icmp eq i32 %ok, 0
  br i1 %or.cond46.not, label %if.then10, label %if.else14

if.then10:                                        ; preds = %if.end6
  br i1 %tobool11.not, label %if.then12, label %if.end18

if.then12:                                        ; preds = %if.then10
  tail call void @abort() #3
  unreachable

if.else14:                                        ; preds = %if.end6
  br i1 %tobool11.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.else14
  tail call void @abort() #3
  unreachable

if.end18:                                         ; preds = %if.else14, %if.then10
  %tobool23.not = icmp eq i32 %ok, 0
  br i1 %cmp1, label %if.then22, label %if.else26

if.then22:                                        ; preds = %if.end18
  br i1 %tobool23.not, label %if.then24, label %if.end30

if.then24:                                        ; preds = %if.then22
  tail call void @abort() #3
  unreachable

if.else26:                                        ; preds = %if.end18
  br i1 %tobool23.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.else26
  tail call void @abort() #3
  unreachable

if.end30:                                         ; preds = %if.else26, %if.then22
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

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %puts.i18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %puts.i19 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
