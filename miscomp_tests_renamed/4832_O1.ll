; 185462541113231257491150463240386705681
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/185462541113231257491150463240386705681.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/185462541113231257491150463240386705681.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"Main function executed.\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @fn_4parms(i8 noundef zeroext %a, ptr noundef readonly captures(none) %b, ptr noundef readonly captures(none) %c, ptr noundef readonly captures(none) %d) local_unnamed_addr #0 {
entry:
  %0 = load i64, ptr %b, align 8, !tbaa !5
  %cmp.not = icmp eq i64 %0, 1
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr %c, align 8, !tbaa !5
  %cmp1.not = icmp eq i64 %1, 2
  br i1 %cmp1.not, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %d, align 4, !tbaa !9
  %cmp3.not = icmp eq i32 %2, 3
  br i1 %cmp3.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %call = tail call i32 (...) @printHello() #3
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false2
  ret void
}

declare i32 @printHello(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp.not.i = icmp eq i32 %call, 1
  br i1 %cmp.not.i, label %fn_4parms.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 (...) @printHello() #3
  br label %fn_4parms.exit

fn_4parms.exit:                                   ; preds = %entry, %if.then.i
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
