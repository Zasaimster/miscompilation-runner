; 191094459051372182094260959115555897343
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/191094459051372182094260959115555897343.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/191094459051372182094260959115555897343.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr constant [2 x [3 x i8]] [[3 x i8] c"123", [3 x i8] c"xyz"], align 1
@b = dso_local global [6 x i8] zeroinitializer, align 1
@pb = dso_local local_unnamed_addr global ptr @b, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"123xaa\00", align 1
@str = private unnamed_addr constant [12 x i8] c"Hello World\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i16 24929, ptr getelementptr inbounds nuw (i8, ptr @b, i64 4), align 1
  %0 = load i8, ptr @b, align 1, !tbaa !5
  %cmp = icmp ne i8 %0, 49
  %1 = load i8, ptr getelementptr inbounds nuw (i8, ptr @b, i64 1), align 1
  %cmp3 = icmp ne i8 %1, 50
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  %2 = load i8, ptr getelementptr inbounds nuw (i8, ptr @b, i64 2), align 1
  %cmp7 = icmp ne i8 %2, 51
  %or.cond24 = select i1 %or.cond, i1 true, i1 %cmp7
  %3 = load i8, ptr getelementptr inbounds nuw (i8, ptr @b, i64 3), align 1
  %cmp11 = icmp ne i8 %3, 120
  %or.cond25 = select i1 %or.cond24, i1 true, i1 %cmp11
  %4 = load i8, ptr getelementptr inbounds nuw (i8, ptr @b, i64 4), align 1
  %cmp15 = icmp ne i8 %4, 97
  %or.cond26 = select i1 %or.cond25, i1 true, i1 %cmp15
  %5 = load i8, ptr getelementptr inbounds nuw (i8, ptr @b, i64 5), align 1
  %cmp19 = icmp ne i8 %5, 97
  %or.cond27 = select i1 %or.cond26, i1 true, i1 %cmp19
  br i1 %or.cond27, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr @pb, align 8, !tbaa !8
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.1, i64 6)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end
  tail call void @abort() #4
  unreachable

if.end23:                                         ; preds = %if.end
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nofree nounwind willreturn memory(argmem: read) }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
