; 140783983113442904294878562945064428124
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/140783983113442904294878562945064428124_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/140783983113442904294878562945064428124.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.baz = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"This function is never called.\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @bar(ptr noundef readonly captures(none) %x, i32 noundef %f, i32 noundef %g, i32 noundef %h, i32 noundef %i, i32 noundef %j) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %cmp2.not = icmp eq i32 %call1, 2
  br i1 %cmp2.not, label %lor.lhs.false3, label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %c = getelementptr inbounds nuw i8, ptr %x, i64 8
  %0 = load i32, ptr %c, align 4, !tbaa !5
  %cmp4.not = icmp eq i32 %0, 3
  br i1 %cmp4.not, label %lor.lhs.false5, label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %d = getelementptr inbounds nuw i8, ptr %x, i64 12
  %1 = load i32, ptr %d, align 4, !tbaa !10
  %cmp6.not = icmp eq i32 %1, 4
  br i1 %cmp6.not, label %lor.lhs.false7, label %if.then

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %e = getelementptr inbounds nuw i8, ptr %x, i64 16
  %2 = load i32, ptr %e, align 4, !tbaa !11
  %cmp8 = icmp ne i32 %2, 5
  %cmp10 = icmp ne i32 %f, 6
  %or.cond = or i1 %cmp10, %cmp8
  %cmp12 = icmp ne i32 %g, 7
  %or.cond19 = or i1 %cmp12, %or.cond
  %cmp14 = icmp ne i32 %h, 8
  %or.cond20 = or i1 %cmp14, %or.cond19
  %cmp16 = icmp ne i32 %i, 9
  %or.cond21 = or i1 %cmp16, %or.cond20
  %cmp18 = icmp ne i32 %j, 10
  %or.cond22 = or i1 %cmp18, %or.cond21
  br i1 %or.cond22, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %entry
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false7
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @foo(ptr noundef readonly byval(%struct.baz) align 8 captures(none) %x, ptr readnone captures(none) %y) local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %cmp2.not.i = icmp ne i32 %call1.i, 2
  %c.i = getelementptr inbounds nuw i8, ptr %x, i64 8
  %0 = load i32, ptr %c.i, align 8
  %cmp4.not.i = icmp ne i32 %0, 3
  %or.cond.not4 = select i1 %cmp2.not.i, i1 true, i1 %cmp4.not.i
  %d.i = getelementptr inbounds nuw i8, ptr %x, i64 12
  %1 = load i32, ptr %d.i, align 4
  %cmp6.not.i = icmp ne i32 %1, 4
  %or.cond1.not3 = select i1 %or.cond.not4, i1 true, i1 %cmp6.not.i
  %e.i = getelementptr inbounds nuw i8, ptr %x, i64 16
  %2 = load i32, ptr %e.i, align 8
  %cmp8.i = icmp ne i32 %2, 5
  %or.cond2 = select i1 %or.cond1.not3, i1 true, i1 %cmp8.i
  br i1 %or.cond2, label %if.then.i, label %bar.exit

if.then.i:                                        ; preds = %lor.lhs.false.i, %entry
  tail call void @abort() #6
  unreachable

bar.exit:                                         ; preds = %lor.lhs.false.i
  ret void
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %x = alloca %struct.baz, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %x) #7
  store i32 1, ptr %x, align 8, !tbaa !12
  %b = getelementptr inbounds nuw i8, ptr %x, i64 4
  store i32 2, ptr %b, align 4, !tbaa !13
  %c = getelementptr inbounds nuw i8, ptr %x, i64 8
  store i32 3, ptr %c, align 8, !tbaa !5
  %d = getelementptr inbounds nuw i8, ptr %x, i64 12
  store i32 4, ptr %d, align 4, !tbaa !10
  %e = getelementptr inbounds nuw i8, ptr %x, i64 16
  store i32 5, ptr %e, align 8, !tbaa !11
  tail call void @foo(ptr noundef nonnull byval(%struct.baz) align 8 %x, ptr poison)
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #4

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #5

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"baz", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 12}
!11 = !{!6, !7, i64 16}
!12 = !{!6, !7, i64 0}
!13 = !{!6, !7, i64 4}
