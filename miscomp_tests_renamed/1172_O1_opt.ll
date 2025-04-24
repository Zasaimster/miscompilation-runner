; 120938248016295230210096864901901017952
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/120938248016295230210096864901901017952_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/120938248016295230210096864901901017952.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str = private unnamed_addr constant [18 x i8] c"This won't print.\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ieq(i32 noundef %x, i32 noundef %y, i32 noundef %ok) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %x, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp2 = icmp eq i32 %x, %y
  %tobool.not = icmp eq i32 %ok, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  br i1 %tobool.not, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.then3
  tail call void @abort() #4
  unreachable

if.else:                                          ; preds = %if.end
  br i1 %tobool.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.else
  tail call void @abort() #4
  unreachable

if.end9:                                          ; preds = %if.else, %if.then3
  %or.cond50.not = icmp eq i32 %y, %x
  %tobool14.not = icmp eq i32 %ok, 0
  br i1 %or.cond50.not, label %if.then13, label %if.else17

if.then13:                                        ; preds = %if.end9
  br i1 %tobool14.not, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.then13
  tail call void @abort() #4
  unreachable

if.else17:                                        ; preds = %if.end9
  br i1 %tobool14.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.else17
  tail call void @abort() #4
  unreachable

if.end21:                                         ; preds = %if.else17, %if.then13
  %tobool26.not = icmp eq i32 %ok, 0
  br i1 %cmp2, label %if.then25, label %if.else29

if.then25:                                        ; preds = %if.end21
  br i1 %tobool26.not, label %if.then27, label %if.end33

if.then27:                                        ; preds = %if.then25
  tail call void @abort() #4
  unreachable

if.else29:                                        ; preds = %if.end21
  br i1 %tobool26.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.else29
  tail call void @abort() #4
  unreachable

if.end33:                                         ; preds = %if.else29, %if.then25
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
  tail call void @abort() #4
  unreachable

if.else:                                          ; preds = %entry
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.else
  tail call void @abort() #4
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
  tail call void @abort() #4
  unreachable

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.else
  tail call void @abort() #4
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
  tail call void @abort() #4
  unreachable

if.else:                                          ; preds = %entry
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.else
  tail call void @abort() #4
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
  tail call void @abort() #4
  unreachable

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.else
  tail call void @abort() #4
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
  tail call void @abort() #4
  unreachable

if.else:                                          ; preds = %entry
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.else
  tail call void @abort() #4
  unreachable

if.end6:                                          ; preds = %if.else, %if.then
  ret i32 undef
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
