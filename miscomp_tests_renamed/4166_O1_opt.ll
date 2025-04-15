; 121361699397427422709359645628643471905
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/121361699397427422709359645628643471905_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/121361699397427422709359645628643471905.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.a = private unnamed_addr constant [10 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10], align 16

; Function Attrs: nofree nounwind uwtable
define dso_local void @check(ptr noundef readonly captures(none) %p) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %p, i64 8
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %for.cond1, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #5
  unreachable

for.cond1:                                        ; preds = %for.body3, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 3, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 10
  br i1 %exitcond.not, label %for.end12, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw i32, ptr %p, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %2 = zext i32 %1 to i64
  %cmp7.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %cmp7.not, label %for.cond1, label %if.then8, !llvm.loop !9

if.then8:                                         ; preds = %for.body3
  tail call void @abort() #5
  unreachable

for.end12:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [10 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %a) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %a, ptr noundef nonnull align 16 dereferenceable(40) @__const.main.a, i64 40, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %a, i8 0, i64 20, i1 false), !tbaa !5
  %arrayidx.i = getelementptr inbounds nuw i8, ptr %a, i64 8
  %0 = load i32, ptr %arrayidx.i, align 8, !tbaa !5
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %for.cond1.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  tail call void @abort() #5
  unreachable

for.cond1.i:                                      ; preds = %for.body3.i, %entry
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body3.i ], [ 3, %entry ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 10
  br i1 %exitcond.not.i, label %check.exit, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.i
  %arrayidx5.i = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv.i
  %1 = load i32, ptr %arrayidx5.i, align 4, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %2 = zext i32 %1 to i64
  %cmp7.not.i = icmp eq i64 %indvars.iv.next.i, %2
  br i1 %cmp7.not.i, label %for.cond1.i, label %if.then8.i, !llvm.loop !9

if.then8.i:                                       ; preds = %for.body3.i
  tail call void @abort() #5
  unreachable

check.exit:                                       ; preds = %for.cond1.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %a) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

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
