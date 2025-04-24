; 190043302370760292920522580659994687743
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/190043302370760292920522580659994687743.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/190043302370760292920522580659994687743.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32, i32 }

@t = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @foo(i32 noundef %n, i32 noundef %f, ptr noundef writeonly captures(none) %s, i32 noundef %m) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @t, align 8, !tbaa !5
  %idxprom32 = sext i32 %n to i64
  %arrayidx33 = getelementptr inbounds %struct.S, ptr %0, i64 %idxprom32
  %1 = load i32, ptr %arrayidx33, align 4, !tbaa !10
  %cmp34 = icmp eq i32 %1, %f
  %cmp135 = icmp sgt i32 %m, 0
  %2 = and i1 %cmp34, %cmp135
  br i1 %2, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %3 = phi i64 [ %idxprom, %for.body ], [ %idxprom32, %entry ]
  %i.036 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %x4 = getelementptr inbounds %struct.S, ptr %0, i64 %3, i32 1
  %4 = load i32, ptr %x4, align 4, !tbaa !13
  %inc = add nuw nsw i32 %i.036, 1
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.S, ptr %0, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4, !tbaa !10
  %cmp = icmp eq i32 %5, %f
  %cmp1 = icmp slt i32 %inc, %m
  %6 = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %6, label %for.body, label %for.end, !llvm.loop !14

for.end:                                          ; preds = %for.body, %entry
  %i.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %cmp5 = icmp eq i32 %i.0.lcssa, %m
  br i1 %cmp5, label %if.then, label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.end
  %cmp739 = icmp sgt i32 %i.0.lcssa, 0
  br i1 %cmp739, label %for.body8.preheader, label %for.end17

for.body8.preheader:                              ; preds = %for.cond6.preheader
  %7 = zext nneg i32 %i.0.lcssa to i64
  br label %for.body8

if.then:                                          ; preds = %for.end
  tail call void @abort() #4
  unreachable

for.body8:                                        ; preds = %for.body8.preheader, %for.body8
  %indvars.iv = phi i64 [ %7, %for.body8.preheader ], [ %indvars.iv.next, %for.body8 ]
  %x.141 = phi i32 [ %n, %for.body8.preheader ], [ %9, %for.body8 ]
  %idxprom9 = sext i32 %x.141 to i64
  %y = getelementptr inbounds %struct.S, ptr %0, i64 %idxprom9, i32 2
  %8 = load i32, ptr %y, align 4, !tbaa !17
  %arrayidx12 = getelementptr inbounds nuw i32, ptr %s, i64 %indvars.iv
  store i32 %8, ptr %arrayidx12, align 4, !tbaa !18
  %x15 = getelementptr inbounds %struct.S, ptr %0, i64 %idxprom9, i32 1
  %9 = load i32, ptr %x15, align 4, !tbaa !13
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp7 = icmp sgt i64 %indvars.iv, 1
  br i1 %cmp7, label %for.body8, label %for.end17, !llvm.loop !19

for.end17:                                        ; preds = %for.body8, %for.cond6.preheader
  %x.1.lcssa = phi i32 [ %n, %for.cond6.preheader ], [ %9, %for.body8 ]
  %add = add nuw nsw i32 %i.0.lcssa, 1
  store i32 %x.1.lcssa, ptr %s, align 4, !tbaa !18
  ret i32 %add
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
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
  br label %for.body.i

for.body.i:                                       ; preds = %entry, %for.body.i
  %2 = phi i64 [ %idxprom.i, %for.body.i ], [ 0, %entry ]
  %i.036.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %entry ]
  %x4.i = getelementptr inbounds %struct.S, ptr %buf, i64 %2, i32 1
  %3 = load i32, ptr %x4.i, align 4, !tbaa !13
  %inc.i = add nuw nsw i32 %i.036.i, 1
  %idxprom.i = sext i32 %3 to i64
  %arrayidx.i = getelementptr inbounds %struct.S, ptr %buf, i64 %idxprom.i
  %4 = load i32, ptr %arrayidx.i, align 4, !tbaa !10
  %cmp.i = icmp eq i32 %4, 1
  %cmp1.i = icmp samesign ult i32 %i.036.i, 2
  %5 = select i1 %cmp.i, i1 %cmp1.i, i1 false
  br i1 %5, label %for.body.i, label %for.end.i, !llvm.loop !14

for.end.i:                                        ; preds = %for.body.i
  %cmp5.i = icmp eq i32 %inc.i, 3
  br i1 %cmp5.i, label %if.then.i, label %for.body8.preheader.i

for.body8.preheader.i:                            ; preds = %for.end.i
  %6 = zext nneg i32 %inc.i to i64
  br label %for.body8.i

if.then.i:                                        ; preds = %for.end.i
  call void @abort() #4
  unreachable

for.body8.i:                                      ; preds = %for.body8.i, %for.body8.preheader.i
  %indvars.iv.i = phi i64 [ %6, %for.body8.preheader.i ], [ %indvars.iv.next.i, %for.body8.i ]
  %x.141.i = phi i32 [ 0, %for.body8.preheader.i ], [ %8, %for.body8.i ]
  %idxprom9.i = sext i32 %x.141.i to i64
  %y.i = getelementptr inbounds %struct.S, ptr %buf, i64 %idxprom9.i, i32 2
  %7 = load i32, ptr %y.i, align 4, !tbaa !17
  %arrayidx12.i = getelementptr inbounds nuw i32, ptr %s, i64 %indvars.iv.i
  store i32 %7, ptr %arrayidx12.i, align 4, !tbaa !18
  %x15.i = getelementptr inbounds %struct.S, ptr %buf, i64 %idxprom9.i, i32 1
  %8 = load i32, ptr %x15.i, align 4, !tbaa !13
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %cmp7.i = icmp sgt i64 %indvars.iv.i, 1
  br i1 %cmp7.i, label %for.body8.i, label %foo.exit, !llvm.loop !19

foo.exit:                                         ; preds = %for.body8.i
  store i32 %8, ptr %s, align 4, !tbaa !18
  %cmp.not = icmp eq i32 %i.036.i, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %foo.exit
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %foo.exit
  %cmp2 = icmp ne i32 %8, 1
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %s, i64 4
  %9 = load i32, ptr %arrayidx3, align 4
  %cmp4 = icmp ne i32 %9, 2
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp4
  br i1 %or.cond, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @abort() #4
  unreachable

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %buf) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %s) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

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
