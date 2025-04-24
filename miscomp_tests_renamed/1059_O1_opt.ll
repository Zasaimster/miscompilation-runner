; 119062570694533553434746043378532202461
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/119062570694533553434746043378532202461_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/119062570694533553434746043378532202461.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"X is negative\0A\00", align 1
@str = private unnamed_addr constant [14 x i8] c"X is negative\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @foo(i32 noundef %i) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, i32 4, i32 %i
  ret i32 %cond
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %call.i25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %tobool.not.i26.not = icmp eq i32 %call.i25, 0
  br i1 %tobool.not.i26.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @abort() #4
  unreachable

if.end4:                                          ; preds = %if.end
  %call.i28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %tobool.not.i29.not = icmp eq i32 %call.i28, 0
  br i1 %tobool.not.i29.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  tail call void @abort() #4
  unreachable

if.end8:                                          ; preds = %if.end4
  %call.i31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %tobool.not.i32.not = icmp eq i32 %call.i31, 0
  br i1 %tobool.not.i32.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  tail call void @abort() #4
  unreachable

if.end12:                                         ; preds = %if.end8
  %call.i34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %tobool.not.i35.not = icmp eq i32 %call.i34, 0
  br i1 %tobool.not.i35.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  tail call void @abort() #4
  unreachable

if.end16:                                         ; preds = %if.end12
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %call.i40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %tobool.not.i41 = icmp eq i32 %call.i40, 0
  br i1 %tobool.not.i41, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end16
  tail call void @abort() #4
  unreachable

if.end24:                                         ; preds = %if.end16
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
