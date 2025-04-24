; 170273283933833771334650158404411687331
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/170273283933833771334650158404411687331_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/170273283933833771334650158404411687331.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"I am not used!\0A\00", align 1
@str = private unnamed_addr constant [14 x i8] c"Program runs!\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 2) i32 @bar() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.i.not, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @global, align 4, !tbaa !5
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @global, align 4, !tbaa !5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.i
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  store i32 1, ptr @global, align 4, !tbaa !5
  %call.i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp.i.not.i.not = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.not.i.not, label %if.then.i.i, label %if.end.i

if.then.i.i:                                      ; preds = %entry
  %puts.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %bar.exit

if.end.i:                                         ; preds = %entry
  %0 = load i32, ptr @global, align 4, !tbaa !5
  %inc.i = add nsw i32 %0, 1
  store i32 %inc.i, ptr @global, align 4, !tbaa !5
  br label %bar.exit

bar.exit:                                         ; preds = %if.end.i, %if.then.i.i
  br i1 %cmp.i.not.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %bar.exit
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %bar.exit
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
