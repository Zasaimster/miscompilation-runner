; 125762300785751434561885957781670150560
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/125762300785751434561885957781670150560.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/125762300785751434561885957781670150560.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.baz = type { i32, i32, i32, i32, i32 }

@str = private unnamed_addr constant [14 x i8] c"Hello, World!\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @bar(ptr noundef readonly captures(none) %x, i32 noundef %f, i32 noundef %g, i32 noundef %h, i32 noundef %i, i32 noundef %j) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %x, align 4, !tbaa !5
  %cmp.not = icmp eq i32 %0, 1
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %b = getelementptr inbounds nuw i8, ptr %x, i64 4
  %1 = load i32, ptr %b, align 4, !tbaa !10
  %cmp1.not = icmp eq i32 %1, 2
  br i1 %cmp1.not, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %c = getelementptr inbounds nuw i8, ptr %x, i64 8
  %2 = load i32, ptr %c, align 4, !tbaa !11
  %cmp3.not = icmp eq i32 %2, 3
  br i1 %cmp3.not, label %lor.lhs.false4, label %if.then

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %d = getelementptr inbounds nuw i8, ptr %x, i64 12
  %3 = load i32, ptr %d, align 4, !tbaa !12
  %cmp5.not = icmp eq i32 %3, 4
  br i1 %cmp5.not, label %lor.lhs.false6, label %if.then

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %e = getelementptr inbounds nuw i8, ptr %x, i64 16
  %4 = load i32, ptr %e, align 4, !tbaa !13
  %cmp7 = icmp ne i32 %4, 5
  %cmp9 = icmp ne i32 %f, 6
  %or.cond = or i1 %cmp9, %cmp7
  %cmp11 = icmp ne i32 %g, 7
  %or.cond18 = or i1 %cmp11, %or.cond
  %cmp13 = icmp ne i32 %h, 8
  %or.cond19 = or i1 %cmp13, %or.cond18
  %cmp15 = icmp ne i32 %i, 9
  %or.cond20 = or i1 %cmp15, %or.cond19
  %cmp17 = icmp ne i32 %j, 10
  %or.cond21 = or i1 %cmp17, %or.cond20
  br i1 %or.cond21, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false6
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @foo(ptr noundef readonly byval(%struct.baz) align 8 captures(none) %x, ptr readnone captures(none) %y) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %x, align 8, !tbaa !5
  %cmp.not.i = icmp ne i32 %0, 1
  %b.i = getelementptr inbounds nuw i8, ptr %x, i64 4
  %1 = load i32, ptr %b.i, align 4
  %cmp1.not.i = icmp ne i32 %1, 2
  %or.cond.not6 = select i1 %cmp.not.i, i1 true, i1 %cmp1.not.i
  %c.i = getelementptr inbounds nuw i8, ptr %x, i64 8
  %2 = load i32, ptr %c.i, align 8
  %cmp3.not.i = icmp ne i32 %2, 3
  %or.cond1.not5 = select i1 %or.cond.not6, i1 true, i1 %cmp3.not.i
  %d.i = getelementptr inbounds nuw i8, ptr %x, i64 12
  %3 = load i32, ptr %d.i, align 4
  %cmp5.not.i = icmp ne i32 %3, 4
  %or.cond2.not4 = select i1 %or.cond1.not5, i1 true, i1 %cmp5.not.i
  %e.i = getelementptr inbounds nuw i8, ptr %x, i64 16
  %4 = load i32, ptr %e.i, align 8
  %cmp7.i = icmp ne i32 %4, 5
  %or.cond3 = select i1 %or.cond2.not4, i1 true, i1 %cmp7.i
  br i1 %or.cond3, label %if.then.i, label %bar.exit

if.then.i:                                        ; preds = %entry
  tail call void @abort() #6
  unreachable

bar.exit:                                         ; preds = %entry
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret void
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %x = alloca %struct.baz, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %x) #7
  store i32 1, ptr %x, align 8, !tbaa !5
  %b = getelementptr inbounds nuw i8, ptr %x, i64 4
  store i32 2, ptr %b, align 4, !tbaa !10
  %c = getelementptr inbounds nuw i8, ptr %x, i64 8
  store i32 3, ptr %c, align 8, !tbaa !11
  %d = getelementptr inbounds nuw i8, ptr %x, i64 12
  store i32 4, ptr %d, align 4, !tbaa !12
  %e = getelementptr inbounds nuw i8, ptr %x, i64 16
  store i32 5, ptr %e, align 8, !tbaa !13
  tail call void @foo(ptr noundef nonnull byval(%struct.baz) align 8 %x, ptr poison)
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"baz", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 4}
!11 = !{!6, !7, i64 8}
!12 = !{!6, !7, i64 12}
!13 = !{!6, !7, i64 16}
