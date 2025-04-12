; 103684809465505732650670486524377944653
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/103684809465505732650670486524377944653_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/103684809465505732650670486524377944653.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = internal unnamed_addr global [4 x i32] zeroinitializer, align 16
@t = internal unnamed_addr global i32 0, align 4

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %ir.i = alloca [0 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %ir.i) #5
  %t.promoted.i = load i32, ptr @t, align 4, !tbaa !5
  %0 = zext i32 %t.promoted.i to i64
  %smax.i = tail call i32 @llvm.smax.i32(i32 %t.promoted.i, i32 4)
  %reass.sub = sub i32 %smax.i, %t.promoted.i
  %1 = add i32 %reass.sub, 1
  br label %for.body.i

for.body.i:                                       ; preds = %ap.exit.i, %entry
  %indvars.iv.i = phi i64 [ %0, %entry ], [ %indvars.iv.next.i, %ap.exit.i ]
  %ix.08.i = phi i32 [ 1, %entry ], [ %inc.i, %ap.exit.i ]
  %exitcond.i = icmp eq i32 %ix.08.i, %1
  br i1 %exitcond.i, label %if.then.i.i, label %ap.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  tail call void @abort() #6
  unreachable

ap.exit.i:                                        ; preds = %for.body.i
  %2 = load i32, ptr %ir.i, align 4, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %3 = trunc nuw i64 %indvars.iv.next.i to i32
  store i32 %3, ptr @t, align 4, !tbaa !5
  %arrayidx.i.i = getelementptr inbounds nuw [4 x i32], ptr @a, i64 0, i64 %indvars.iv.i
  store i32 %2, ptr %arrayidx.i.i, align 4, !tbaa !5
  %inc.i = add nuw nsw i32 %ix.08.i, 1
  %exitcond11.not.i = icmp eq i32 %inc.i, 5
  br i1 %exitcond11.not.i, label %testit.exit, label %for.body.i, !llvm.loop !9

testit.exit:                                      ; preds = %ap.exit.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %ir.i) #5
  %4 = load i32, ptr @a, align 16, !tbaa !5
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %testit.exit
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %testit.exit
  %5 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 4), align 4, !tbaa !5
  %cmp1.not = icmp eq i32 %5, 3
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @abort() #6
  unreachable

if.end3:                                          ; preds = %if.end
  %6 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 8), align 8, !tbaa !5
  %cmp4.not = icmp eq i32 %6, 2
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  tail call void @abort() #6
  unreachable

if.end6:                                          ; preds = %if.end3
  %7 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 12), align 4, !tbaa !5
  %cmp7.not = icmp eq i32 %7, 1
  br i1 %cmp7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end6
  tail call void @abort() #6
  unreachable

if.end9:                                          ; preds = %if.end6
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
