; 17686819840584672902264651449856984545
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/17686819840584672902264651449856984545.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/17686819840584672902264651449856984545.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aim_callhandler.i = internal unnamed_addr global i1 false, align 4
@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @aim_callhandler(i32 noundef %sess, i32 noundef %conn, i16 noundef zeroext %family, i16 zeroext %type) local_unnamed_addr #0 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.end5, %entry
  %ret.tr = phi i32 [ poison, %entry ], [ %current.ret.tr, %if.end5 ]
  %ret.known.tr = phi i1 [ false, %entry ], [ true, %if.end5 ]
  %tobool.not = icmp eq i32 %conn, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %tailrecurse
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp = icmp eq i32 %call, 65535
  br i1 %cmp, label %return, label %if.end2

if.end2:                                          ; preds = %if.end
  %.b = load i1, ptr @aim_callhandler.i, align 4
  br i1 %.b, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end2
  tail call void @abort() #5
  unreachable

if.end5:                                          ; preds = %if.end2
  store i1 true, ptr @aim_callhandler.i, align 4
  %current.ret.tr = select i1 %ret.known.tr, i32 %ret.tr, i32 0
  br label %tailrecurse

return:                                           ; preds = %if.end, %tailrecurse
  %current.ret.tr8 = select i1 %ret.known.tr, i32 %ret.tr, i32 0
  ret i32 %current.ret.tr8
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %call = tail call i32 @aim_callhandler(i32 noundef 0, i32 noundef 1, i16 noundef zeroext 0, i16 zeroext poison)
  tail call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
