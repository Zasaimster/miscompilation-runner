; 197004709394862355219725971577355767513
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/197004709394862355219725971577355767513_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/197004709394862355219725971577355767513.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local void @find(ptr noundef readnone captures(none) %first, ptr noundef readnone captures(none) %last) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %shr = ashr i32 %call, 2
  %cmp = icmp sgt i32 %shr, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %entry
  %cmp.not.i = icmp eq i32 %shr, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  tail call void @abort() #4
  unreachable

if.end.i:                                         ; preds = %for.body
  tail call void @exit(i32 noundef 0) #4
  unreachable

for.end:                                          ; preds = %entry
  tail call void @abort() #4
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local void @ok(i32 noundef %i) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %i, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  tail call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %shr.i = ashr i32 %call.i, 2
  %cmp.i = icmp sgt i32 %shr.i, 0
  br i1 %cmp.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %entry
  %cmp.not.i.i = icmp eq i32 %shr.i, 1
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  tail call void @abort() #4
  unreachable

if.end.i.i:                                       ; preds = %for.body.i
  tail call void @exit(i32 noundef 0) #4
  unreachable

for.end.i:                                        ; preds = %entry
  tail call void @abort() #4
  unreachable
}

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
