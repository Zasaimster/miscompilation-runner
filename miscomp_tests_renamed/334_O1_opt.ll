; 150420119492235384899638529895206327402
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/150420119492235384899638529895206327402_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/150420119492235384899638529895206327402.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32, i32 }

@t = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @foo(i32 noundef %n, i32 noundef %f, ptr noundef writeonly captures(none) %s, i32 noundef %m) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @func2() #5
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %0 = load ptr, ptr @t, align 8, !tbaa !5
  %idxprom37 = sext i32 %n to i64
  %arrayidx38 = getelementptr inbounds %struct.S, ptr %0, i64 %idxprom37
  %1 = load i32, ptr %arrayidx38, align 4, !tbaa !10
  %cmp139 = icmp eq i32 %1, %f
  %cmp240 = icmp sgt i32 %m, 0
  %2 = and i1 %cmp139, %cmp240
  br i1 %2, label %for.body, label %for.end

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %3 = phi i64 [ %idxprom, %for.body ], [ %idxprom37, %for.cond.preheader ]
  %i.041 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %x5 = getelementptr inbounds %struct.S, ptr %0, i64 %3, i32 1
  %4 = load i32, ptr %x5, align 4, !tbaa !13
  %inc = add nuw nsw i32 %i.041, 1
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.S, ptr %0, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4, !tbaa !10
  %cmp1 = icmp eq i32 %5, %f
  %cmp2 = icmp slt i32 %inc, %m
  %6 = select i1 %cmp1, i1 %cmp2, i1 false
  br i1 %6, label %for.body, label %for.end, !llvm.loop !14

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body ]
  %cmp6 = icmp eq i32 %i.0.lcssa, %m
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.end
  tail call void @abort() #6
  unreachable

if.end8:                                          ; preds = %for.end
  %add = add nuw nsw i32 %i.0.lcssa, 1
  %cmp1044 = icmp sgt i32 %i.0.lcssa, 0
  br i1 %cmp1044, label %for.body11.preheader, label %for.end20

for.body11.preheader:                             ; preds = %if.end8
  %7 = zext nneg i32 %i.0.lcssa to i64
  br label %for.body11

for.body11:                                       ; preds = %for.body11, %for.body11.preheader
  %indvars.iv = phi i64 [ %7, %for.body11.preheader ], [ %indvars.iv.next, %for.body11 ]
  %x.145 = phi i32 [ %n, %for.body11.preheader ], [ %9, %for.body11 ]
  %idxprom12 = sext i32 %x.145 to i64
  %y = getelementptr inbounds %struct.S, ptr %0, i64 %idxprom12, i32 2
  %8 = load i32, ptr %y, align 4, !tbaa !17
  %arrayidx15 = getelementptr inbounds nuw i32, ptr %s, i64 %indvars.iv
  store i32 %8, ptr %arrayidx15, align 4, !tbaa !18
  %x18 = getelementptr inbounds %struct.S, ptr %0, i64 %idxprom12, i32 1
  %9 = load i32, ptr %x18, align 4, !tbaa !13
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp10 = icmp sgt i64 %indvars.iv, 1
  br i1 %cmp10, label %for.body11, label %for.end20, !llvm.loop !19

for.end20:                                        ; preds = %for.body11, %if.end8
  %x.1.lcssa = phi i32 [ %n, %if.end8 ], [ %9, %for.body11 ]
  store i32 %x.1.lcssa, ptr %s, align 4, !tbaa !18
  br label %cleanup

cleanup:                                          ; preds = %for.end20, %entry
  %retval.0 = phi i32 [ %add, %for.end20 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @func2(...) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [3 x i32], align 4
  %buf = alloca [3 x %struct.S], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %s) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %buf) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %buf, i8 0, i64 36, i1 false)
  store i32 1, ptr %buf, align 16
  %0 = getelementptr inbounds nuw i8, ptr %buf, i64 4
  store i32 1, ptr %0, align 4
  %1 = getelementptr inbounds nuw i8, ptr %buf, i64 8
  store i32 2, ptr %1, align 8
  store ptr %buf, ptr @t, align 8, !tbaa !5
  %call.i = call i32 (...) @func2() #5
  %cmp.i = icmp eq i32 %call.i, -1
  br i1 %cmp.i, label %if.then, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %entry
  %2 = load ptr, ptr @t, align 8, !tbaa !5
  %3 = load i32, ptr %2, align 4, !tbaa !10
  %cmp139.i = icmp eq i32 %3, 1
  br i1 %cmp139.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %for.body.i, %for.cond.preheader.i
  %4 = phi i64 [ %idxprom.i, %for.body.i ], [ 0, %for.cond.preheader.i ]
  %i.041.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %for.cond.preheader.i ]
  %x5.i = getelementptr inbounds %struct.S, ptr %2, i64 %4, i32 1
  %5 = load i32, ptr %x5.i, align 4, !tbaa !13
  %inc.i = add nuw nsw i32 %i.041.i, 1
  %idxprom.i = sext i32 %5 to i64
  %arrayidx.i = getelementptr inbounds %struct.S, ptr %2, i64 %idxprom.i
  %6 = load i32, ptr %arrayidx.i, align 4, !tbaa !10
  %cmp1.i = icmp eq i32 %6, 1
  %cmp2.i = icmp samesign ult i32 %i.041.i, 2
  %7 = select i1 %cmp1.i, i1 %cmp2.i, i1 false
  br i1 %7, label %for.body.i, label %for.end.i, !llvm.loop !14

for.end.i:                                        ; preds = %for.body.i, %for.cond.preheader.i
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.body.i ]
  %cmp6.i = icmp eq i32 %i.0.lcssa.i, 3
  br i1 %cmp6.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %for.end.i
  call void @abort() #6
  unreachable

if.end8.i:                                        ; preds = %for.end.i
  %cmp1044.i = icmp sgt i32 %i.0.lcssa.i, 0
  br i1 %cmp1044.i, label %for.body11.preheader.i, label %for.end20.i

for.body11.preheader.i:                           ; preds = %if.end8.i
  %8 = zext nneg i32 %i.0.lcssa.i to i64
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i, %for.body11.preheader.i
  %indvars.iv.i = phi i64 [ %8, %for.body11.preheader.i ], [ %indvars.iv.next.i, %for.body11.i ]
  %x.145.i = phi i32 [ 0, %for.body11.preheader.i ], [ %10, %for.body11.i ]
  %idxprom12.i = sext i32 %x.145.i to i64
  %y.i = getelementptr inbounds %struct.S, ptr %2, i64 %idxprom12.i, i32 2
  %9 = load i32, ptr %y.i, align 4, !tbaa !17
  %arrayidx15.i = getelementptr inbounds nuw i32, ptr %s, i64 %indvars.iv.i
  store i32 %9, ptr %arrayidx15.i, align 4, !tbaa !18
  %x18.i = getelementptr inbounds %struct.S, ptr %2, i64 %idxprom12.i, i32 1
  %10 = load i32, ptr %x18.i, align 4, !tbaa !13
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %cmp10.i = icmp sgt i64 %indvars.iv.i, 1
  br i1 %cmp10.i, label %for.body11.i, label %for.end20.i, !llvm.loop !19

for.end20.i:                                      ; preds = %for.body11.i, %if.end8.i
  %x.1.lcssa.i = phi i32 [ 0, %if.end8.i ], [ %10, %for.body11.i ]
  store i32 %x.1.lcssa.i, ptr %s, align 4, !tbaa !18
  %11 = icmp eq i32 %i.0.lcssa.i, 1
  br i1 %11, label %if.end, label %if.then

if.then:                                          ; preds = %for.end20.i, %entry
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.end20.i
  %12 = load i32, ptr %s, align 4, !tbaa !18
  %cmp2 = icmp ne i32 %12, 1
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %s, i64 4
  %13 = load i32, ptr %arrayidx3, align 4
  %cmp4 = icmp ne i32 %13, 2
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp4
  br i1 %or.cond, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @abort() #6
  unreachable

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %buf) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %s) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!6 = !{!"p1 _ZTS1S", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 0}
!11 = !{!"S", !12, i64 0, !12, i64 4, !12, i64 8}
!12 = !{!"int", !8, i64 0}
!13 = !{!11, !12, i64 4}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!11, !12, i64 8}
!18 = !{!12, !12, i64 0}
!19 = distinct !{!19, !15, !16}
