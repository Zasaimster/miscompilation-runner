; 177080614664770361541260101876584998987
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/177080614664770361541260101876584998987.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/177080614664770361541260101876584998987.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@str = private unnamed_addr constant [24 x i8] c"Main function executed.\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef signext i8 @fn1() local_unnamed_addr #0 {
entry:
  %call2 = tail call i32 (...) @printHello() #5
  %cmp3 = icmp slt i32 %call2, 1
  br i1 %cmp3, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret i8 -15

for.body:                                         ; preds = %entry, %for.body
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %call = tail call i32 (...) @printHello() #5
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !llvm.loop !5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printHello(...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %g = alloca i32, align 4
  store i32 0, ptr @b, align 4, !tbaa !8
  store i32 1, ptr @c, align 4, !tbaa !8
  %call2.i = tail call i32 (...) @printHello() #5
  %cmp3.i = icmp slt i32 %call2.i, 1
  br i1 %cmp3.i, label %for.body.i, label %fn1.exit

for.body.i:                                       ; preds = %entry, %for.body.i
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %call.i = tail call i32 (...) @printHello() #5
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %for.body.i, label %fn1.exit, !llvm.loop !5

fn1.exit:                                         ; preds = %for.body.i, %entry
  %0 = load i32, ptr @b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %g)
  %conv1 = shl i32 %0, 24
  %sext = ashr exact i32 %conv1, 24
  %conv2 = xor i32 %sext, -15
  store volatile i32 %conv2, ptr %g, align 4, !tbaa !8
  %g.0.g.0.g.0.g.0. = load volatile i32, ptr %g, align 4, !tbaa !8
  %cmp3.not = icmp eq i32 %g.0.g.0.g.0.g.0., -15
  br i1 %cmp3.not, label %if.end, label %if.then

if.then:                                          ; preds = %fn1.exit
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %fn1.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %g)
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
