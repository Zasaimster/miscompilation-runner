; 153812157627033110403692023043565492580
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/153812157627033110403692023043565492580.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/153812157627033110403692023043565492580.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global [32 x i8] zeroinitializer, align 16
@i = dso_local global i32 0, align 4
@cp = dso_local global ptr null, align 8

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %c = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %c) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %c, i8 0, i64 32, i1 false)
  %0 = load volatile i32, ptr @i, align 4, !tbaa !5
  %idx.ext = sext i32 %0 to i64
  %add.ptr = getelementptr inbounds i8, ptr @d, i64 %idx.ext
  br label %for.body

for.body:                                         ; preds = %entry, %sw.epilog
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %sw.epilog ]
  %p.049 = phi ptr [ %add.ptr, %entry ], [ %incdec.ptr, %sw.epilog ]
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %p.049, i64 1
  %1 = load i8, ptr %incdec.ptr, align 1, !tbaa !9
  %2 = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %2, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 25, label %sw.bb3
  ]

sw.bb:                                            ; preds = %for.body
  br label %sw.epilog

sw.bb1:                                           ; preds = %for.body
  br label %sw.epilog

sw.bb3:                                           ; preds = %for.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb3, %sw.bb1, %sw.bb
  %x.0 = phi i8 [ -1, %for.body ], [ -2, %sw.bb3 ], [ -5, %sw.bb1 ], [ -3, %sw.bb ]
  %or = or i8 %x.0, %1
  %arrayidx = getelementptr inbounds nuw [32 x i8], ptr %c, i64 0, i64 %indvars.iv
  store i8 %or, ptr %arrayidx, align 1, !tbaa !9
  store volatile ptr %incdec.ptr, ptr @cp, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 30
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !13

for.end:                                          ; preds = %sw.epilog
  %call = tail call i32 (...) @pointlessFunction() #6
  %3 = load i8, ptr %c, align 16, !tbaa !9
  %cmp8 = icmp ne i8 %3, -1
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %c, i64 1
  %4 = load i8, ptr %arrayidx10, align 1
  %cmp12 = icmp ne i8 %4, -3
  %or.cond = select i1 %cmp8, i1 true, i1 %cmp12
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %c, i64 2
  %5 = load i8, ptr %arrayidx15, align 2
  %cmp17 = icmp ne i8 %5, -5
  %or.cond37 = select i1 %or.cond, i1 true, i1 %cmp17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %c, i64 3
  %6 = load i8, ptr %arrayidx20, align 1
  %cmp22 = icmp ne i8 %6, -1
  %or.cond38 = select i1 %or.cond37, i1 true, i1 %cmp22
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %c, i64 4
  %7 = load i8, ptr %arrayidx25, align 4
  %cmp27 = icmp ne i8 %7, -1
  %or.cond39 = select i1 %or.cond38, i1 true, i1 %cmp27
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %c, i64 25
  %8 = load i8, ptr %arrayidx30, align 1
  %cmp32 = icmp ne i8 %8, -2
  %or.cond40 = select i1 %or.cond39, i1 true, i1 %cmp32
  br i1 %or.cond40, label %if.then, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %for.end
  %9 = load volatile ptr, ptr @cp, align 8, !tbaa !10
  %cmp35.not = icmp eq ptr %9, getelementptr inbounds nuw (i8, ptr @d, i64 30)
  br i1 %cmp35.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false34, %for.end
  tail call void @abort() #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false34
  tail call void @exit(i32 noundef 0) #7
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @pointlessFunction(...) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #5

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

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
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
