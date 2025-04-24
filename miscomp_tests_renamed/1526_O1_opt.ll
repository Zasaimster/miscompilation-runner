; 12725072268450038599184232929028276209
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/12725072268450038599184232929028276209_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/12725072268450038599184232929028276209.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.U = type { [3 x i64] }

@t = dso_local global { i8, i8, i8, i8, [4 x i8], [4 x i64] } { i8 26, i8 0, i8 0, i8 0, [4 x i8] zeroinitializer, [4 x i64] [i64 0, i64 21, i64 22, i64 23] }, align 8
@str = private unnamed_addr constant [14 x i8] c"Hello, World!\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noalias noundef ptr @foo(ptr noundef readonly captures(none) %x) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i64 16
  %u.sroa.0.sroa.0.0.copyload = load i64, ptr %arrayidx, align 8
  %u.sroa.0.sroa.4.0.arrayidx.sroa_idx = getelementptr inbounds nuw i8, ptr %x, i64 24
  %u.sroa.0.sroa.4.0.copyload = load i64, ptr %u.sroa.0.sroa.4.0.arrayidx.sroa_idx, align 8
  %u.sroa.0.sroa.5.0.arrayidx.sroa_idx = getelementptr inbounds nuw i8, ptr %x, i64 32
  %u.sroa.0.sroa.5.0.copyload = load i64, ptr %u.sroa.0.sroa.5.0.arrayidx.sroa_idx, align 8
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %cmp.i = icmp ne i64 %u.sroa.0.sroa.0.0.copyload, 21
  %cmp3.i = icmp ne i64 %u.sroa.0.sroa.4.0.copyload, 22
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp3.i
  %cmp7.i = icmp ne i64 %u.sroa.0.sroa.5.0.copyload, 23
  %or.cond8.i = select i1 %or.cond.i, i1 true, i1 %cmp7.i
  br i1 %or.cond8.i, label %if.then.i, label %bar.exit

if.then.i:                                        ; preds = %entry
  tail call void @abort() #5
  unreachable

bar.exit:                                         ; preds = %entry
  ret ptr null
}

; Function Attrs: nofree nounwind uwtable
define dso_local noalias noundef ptr @bar(ptr noundef readonly byval(%struct.U) align 8 captures(none) %d, i32 noundef %m) local_unnamed_addr #0 {
entry:
  %0 = load i64, ptr %d, align 8, !tbaa !5
  %cmp = icmp ne i64 %0, 21
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %d, i64 8
  %1 = load i64, ptr %arrayidx2, align 8
  %cmp3 = icmp ne i64 %1, 22
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %d, i64 16
  %2 = load i64, ptr %arrayidx6, align 8
  %cmp7 = icmp ne i64 %2, 23
  %or.cond8 = select i1 %or.cond, i1 true, i1 %cmp7
  br i1 %or.cond8, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  ret ptr null
}

; Function Attrs: nofree nounwind uwtable
define dso_local noalias noundef ptr @baz(ptr noundef readonly captures(none) %x) local_unnamed_addr #0 {
entry:
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %x, i64 16
  %u.sroa.0.sroa.0.0.copyload = load i64, ptr %arrayidx6, align 8
  %u.sroa.0.sroa.4.0.arrayidx6.sroa_idx = getelementptr inbounds nuw i8, ptr %x, i64 24
  %u.sroa.0.sroa.4.0.copyload = load i64, ptr %u.sroa.0.sroa.4.0.arrayidx6.sroa_idx, align 8
  %u.sroa.0.sroa.5.0.arrayidx6.sroa_idx = getelementptr inbounds nuw i8, ptr %x, i64 32
  %u.sroa.0.sroa.5.0.copyload = load i64, ptr %u.sroa.0.sroa.5.0.arrayidx6.sroa_idx, align 8
  %cmp.i = icmp ne i64 %u.sroa.0.sroa.0.0.copyload, 21
  %cmp3.i = icmp ne i64 %u.sroa.0.sroa.4.0.copyload, 22
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp3.i
  %cmp7.i = icmp ne i64 %u.sroa.0.sroa.5.0.copyload, 23
  %or.cond8.i = select i1 %or.cond.i, i1 true, i1 %cmp7.i
  br i1 %or.cond8.i, label %if.then.i, label %bar.exit

if.then.i:                                        ; preds = %entry
  tail call void @abort() #5
  unreachable

bar.exit:                                         ; preds = %entry
  ret ptr null
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %call = tail call ptr @baz(ptr noundef nonnull @t)
  %call1 = tail call ptr @foo(ptr noundef nonnull @t)
  tail call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { noreturn nounwind }

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
