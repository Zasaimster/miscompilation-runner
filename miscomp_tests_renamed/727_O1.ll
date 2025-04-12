; 105730437867325286438634430296531602382
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/105730437867325286438634430296531602382.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/105730437867325286438634430296531602382.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errflag = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@str.4 = private unnamed_addr constant [14 x i8] c"Hello, World!\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @f(i64 noundef %x, i64 noundef %y) local_unnamed_addr #0 {
entry:
  store i32 0, ptr @errflag, align 4, !tbaa !5
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv = sext i32 %call to i64
  %add = add nsw i64 %y, %conv
  %cmp = icmp sgt i64 %x, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cmp2 = icmp slt i64 %y, 0
  %cmp4 = icmp sgt i64 %add, -1
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp4
  br i1 %or.cond, label %cleanup, label %if.end14

if.else:                                          ; preds = %entry
  %cmp7 = icmp sgt i64 %y, 0
  %cmp10 = icmp slt i64 %add, 0
  %or.cond15 = select i1 %cmp7, i1 true, i1 %cmp10
  br i1 %or.cond15, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.else, %if.then
  store i32 1, ptr @errflag, align 4, !tbaa !5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then, %if.end14
  %retval.0 = phi i64 [ 0, %if.end14 ], [ %add, %if.then ], [ %add, %if.else ]
  ret i64 %retval.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  store i32 0, ptr @errflag, align 4, !tbaa !5
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp4.i = icmp sgt i32 %call.i, -1
  br i1 %cmp4.i, label %f.exit, label %if.end14.i

if.end14.i:                                       ; preds = %entry
  store i32 1, ptr @errflag, align 4, !tbaa !5
  br label %f.exit

f.exit:                                           ; preds = %entry, %if.end14.i
  %0 = load i32, ptr @errflag, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %f.exit
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %f.exit
  store i32 0, ptr @errflag, align 4, !tbaa !5
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4)
  %1 = load i32, ptr @errflag, align 4, !tbaa !5
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @abort() #6
  unreachable

if.end4:                                          ; preds = %if.end
  store i32 0, ptr @errflag, align 4, !tbaa !5
  %puts72 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4)
  %2 = load i32, ptr @errflag, align 4, !tbaa !5
  %tobool6.not = icmp eq i32 %2, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  tail call void @abort() #6
  unreachable

if.end8:                                          ; preds = %if.end4
  store i32 0, ptr @errflag, align 4, !tbaa !5
  %puts73 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4)
  %3 = load i32, ptr @errflag, align 4, !tbaa !5
  %tobool10.not = icmp eq i32 %3, 0
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  tail call void @abort() #6
  unreachable

if.end12:                                         ; preds = %if.end8
  store i32 0, ptr @errflag, align 4, !tbaa !5
  %call.i45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp10.i48 = icmp slt i32 %call.i45, 1
  br i1 %cmp10.i48, label %f.exit51, label %if.end14.i49

if.end14.i49:                                     ; preds = %if.end12
  store i32 1, ptr @errflag, align 4, !tbaa !5
  br label %f.exit51

f.exit51:                                         ; preds = %if.end12, %if.end14.i49
  %4 = load i32, ptr @errflag, align 4, !tbaa !5
  %tobool14.not = icmp eq i32 %4, 0
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %f.exit51
  tail call void @abort() #6
  unreachable

if.end16:                                         ; preds = %f.exit51
  store i32 0, ptr @errflag, align 4, !tbaa !5
  %puts74 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4)
  %5 = load i32, ptr @errflag, align 4, !tbaa !5
  %tobool18.not = icmp eq i32 %5, 0
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  tail call void @abort() #6
  unreachable

if.end20:                                         ; preds = %if.end16
  store i32 0, ptr @errflag, align 4, !tbaa !5
  %call.i59 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp4.i62 = icmp sgt i32 %call.i59, -2
  br i1 %cmp4.i62, label %f.exit65, label %if.end14.i63

if.end14.i63:                                     ; preds = %if.end20
  store i32 1, ptr @errflag, align 4, !tbaa !5
  br label %f.exit65

f.exit65:                                         ; preds = %if.end20, %if.end14.i63
  %6 = load i32, ptr @errflag, align 4, !tbaa !5
  %tobool22.not = icmp eq i32 %6, 0
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %f.exit65
  tail call void @abort() #6
  unreachable

if.end24:                                         ; preds = %f.exit65
  store i32 0, ptr @errflag, align 4, !tbaa !5
  %puts75 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4)
  %7 = load i32, ptr @errflag, align 4, !tbaa !5
  %tobool26.not = icmp eq i32 %7, 0
  br i1 %tobool26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end24
  tail call void @abort() #6
  unreachable

if.end28:                                         ; preds = %if.end24
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { noreturn nounwind }

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
