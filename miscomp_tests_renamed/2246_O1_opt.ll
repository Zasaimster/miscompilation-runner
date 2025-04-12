; 188704817206483081507607465725456054813
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/188704817206483081507607465725456054813_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/188704817206483081507607465725456054813.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errflag = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local i64 @f(i64 noundef %x, i64 noundef %y) local_unnamed_addr #0 {
entry:
  %add = add nsw i64 %y, %x
  %conv = trunc i64 %add to i32
  store i32 %conv, ptr @errflag, align 4, !tbaa !5
  %call = tail call i32 (...) @testFunction() #5
  %conv1 = sext i32 %call to i64
  %add2 = add nsw i64 %y, %conv1
  %cmp = icmp sgt i64 %x, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cmp4 = icmp slt i64 %y, 0
  %cmp6 = icmp sgt i64 %add2, -1
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp6
  br i1 %or.cond, label %cleanup, label %if.end16

if.else:                                          ; preds = %entry
  %cmp9 = icmp sgt i64 %y, 0
  %cmp12 = icmp slt i64 %add2, 0
  %or.cond17 = select i1 %cmp9, i1 true, i1 %cmp12
  br i1 %or.cond17, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.else, %if.then
  store i32 1, ptr @errflag, align 4, !tbaa !5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.else, %if.then
  %retval.0 = phi i64 [ 0, %if.end16 ], [ %add2, %if.then ], [ %add2, %if.else ]
  ret i64 %retval.0
}

declare i32 @testFunction(...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  store i32 0, ptr @errflag, align 4, !tbaa !5
  %call.i = tail call i32 (...) @testFunction() #5
  %cmp6.i = icmp sgt i32 %call.i, -1
  br i1 %cmp6.i, label %f.exit, label %if.end16.i

if.end16.i:                                       ; preds = %entry
  store i32 1, ptr @errflag, align 4, !tbaa !5
  br label %f.exit

f.exit:                                           ; preds = %if.end16.i, %entry
  %0 = load i32, ptr @errflag, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %f.exit
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %f.exit
  store i32 0, ptr @errflag, align 4, !tbaa !5
  %call.i29 = tail call i32 (...) @testFunction() #5
  %1 = load i32, ptr @errflag, align 4, !tbaa !5
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @abort() #6
  unreachable

if.end4:                                          ; preds = %if.end
  store i32 0, ptr @errflag, align 4, !tbaa !5
  %call.i34 = tail call i32 (...) @testFunction() #5
  %2 = load i32, ptr @errflag, align 4, !tbaa !5
  %tobool6.not = icmp eq i32 %2, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  tail call void @abort() #6
  unreachable

if.end8:                                          ; preds = %if.end4
  store i32 0, ptr @errflag, align 4, !tbaa !5
  %call.i39 = tail call i32 (...) @testFunction() #5
  %3 = load i32, ptr @errflag, align 4, !tbaa !5
  %tobool10.not = icmp eq i32 %3, 0
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  tail call void @abort() #6
  unreachable

if.end12:                                         ; preds = %if.end8
  store i32 -1, ptr @errflag, align 4, !tbaa !5
  %call.i45 = tail call i32 (...) @testFunction() #5
  %cmp12.i48 = icmp slt i32 %call.i45, 1
  br i1 %cmp12.i48, label %f.exit51, label %if.end16.i49

if.end16.i49:                                     ; preds = %if.end12
  store i32 1, ptr @errflag, align 4, !tbaa !5
  br label %f.exit51

f.exit51:                                         ; preds = %if.end16.i49, %if.end12
  %4 = load i32, ptr @errflag, align 4, !tbaa !5
  %tobool14.not = icmp eq i32 %4, 0
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %f.exit51
  tail call void @abort() #6
  unreachable

if.end16:                                         ; preds = %f.exit51
  store i32 -2, ptr @errflag, align 4, !tbaa !5
  %call.i52 = tail call i32 (...) @testFunction() #5
  %5 = load i32, ptr @errflag, align 4, !tbaa !5
  %tobool18.not = icmp eq i32 %5, 0
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  tail call void @abort() #6
  unreachable

if.end20:                                         ; preds = %if.end16
  store i32 0, ptr @errflag, align 4, !tbaa !5
  %call.i59 = tail call i32 (...) @testFunction() #5
  %cmp6.i62 = icmp sgt i32 %call.i59, -2
  br i1 %cmp6.i62, label %f.exit65, label %if.end16.i63

if.end16.i63:                                     ; preds = %if.end20
  store i32 1, ptr @errflag, align 4, !tbaa !5
  br label %f.exit65

f.exit65:                                         ; preds = %if.end16.i63, %if.end20
  %6 = load i32, ptr @errflag, align 4, !tbaa !5
  %tobool22.not = icmp eq i32 %6, 0
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %f.exit65
  tail call void @abort() #6
  unreachable

if.end24:                                         ; preds = %f.exit65
  store i32 -1, ptr @errflag, align 4, !tbaa !5
  %call.i66 = tail call i32 (...) @testFunction() #5
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

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
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
