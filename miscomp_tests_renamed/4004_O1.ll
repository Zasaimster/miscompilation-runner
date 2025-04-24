; 169940025618931594961543409375816405598
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/169940025618931594961543409375816405598.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/169940025618931594961543409375816405598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bar = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local i32 @f(ptr noundef writeonly captures(none) %p) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @bar, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %0, 2
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %1 = phi i32 [ 1, %while.body ], [ %0, %entry ]
  %foo.05 = phi i32 [ %sub, %while.body ], [ 2, %entry ]
  %p.addr.04 = phi ptr [ %incdec.ptr, %while.body ], [ %p, %entry ]
  %sub = sub nsw i32 %foo.05, %1
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %p.addr.04, i64 4
  store i32 %sub, ptr %p.addr.04, align 4, !tbaa !5
  store i32 1, ptr @bar, align 4, !tbaa !5
  %cmp = icmp sgt i32 %sub, 1
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !9

while.end:                                        ; preds = %while.body, %entry
  ret i32 undef
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %tab = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tab) #5
  %arrayidx = getelementptr inbounds nuw i8, ptr %tab, i64 4
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  store i32 0, ptr %tab, align 4, !tbaa !5
  %0 = load i32, ptr @bar, align 4, !tbaa !5
  %cmp3.i = icmp slt i32 %0, 2
  br i1 %cmp3.i, label %while.body.i.preheader, label %f.exit

while.body.i.preheader:                           ; preds = %entry
  store i32 1, ptr @bar, align 4, !tbaa !5
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.preheader, %while.body.i
  %1 = phi i32 [ 1, %while.body.i ], [ %0, %while.body.i.preheader ]
  %foo.05.i = phi i32 [ %sub.i, %while.body.i ], [ 2, %while.body.i.preheader ]
  %p.addr.04.i = phi ptr [ %incdec.ptr.i, %while.body.i ], [ %tab, %while.body.i.preheader ]
  %sub.i = sub nsw i32 %foo.05.i, %1
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %p.addr.04.i, i64 4
  store i32 %sub.i, ptr %p.addr.04.i, align 4, !tbaa !5
  %cmp.i = icmp sgt i32 %sub.i, 1
  br i1 %cmp.i, label %while.body.i, label %f.exit, !llvm.loop !9

f.exit:                                           ; preds = %while.body.i, %entry
  %2 = load i32, ptr %tab, align 4, !tbaa !5
  %cmp = icmp ne i32 %2, 2
  %3 = load i32, ptr %arrayidx, align 4
  %cmp4 = icmp ne i32 %3, 1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %f.exit
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %f.exit
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
