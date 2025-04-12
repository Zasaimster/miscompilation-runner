; 145136882492286952992757164350894542777
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/145136882492286952992757164350894542777_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/145136882492286952992757164350894542777.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xx = type { i32, ptr, i16 }

@f1.beenhere = internal unnamed_addr global i32 0, align 4

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @foo(ptr noundef captures(none) %p, i32 noundef %b, i32 noundef %c, i32 noundef %d) local_unnamed_addr #0 {
entry:
  %tobool1.not = icmp eq i32 %b, 0
  %f1.beenhere.promoted31 = load i32, ptr @f1.beenhere, align 4, !tbaa !5
  %c4 = getelementptr inbounds nuw i8, ptr %p, i64 16
  %tobool9.not = icmp eq i32 %c, 0
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %sw.epilog, %entry
  %inc.i.lcssa3032 = phi i32 [ %inc.i, %sw.epilog ], [ %f1.beenhere.promoted31, %entry ]
  %d.addr.0.ph = phi i32 [ %conv13, %sw.epilog ], [ %d, %entry ]
  %smax = tail call i32 @llvm.smax.i32(i32 %inc.i.lcssa3032, i32 2)
  br label %for.cond

for.cond:                                         ; preds = %if.end, %for.cond.outer
  %inc.i28 = phi i32 [ %inc.i.lcssa3032, %for.cond.outer ], [ %inc.i, %if.end ]
  %inc.i = add i32 %inc.i28, 1
  %exitcond = icmp eq i32 %inc.i28, %smax
  br i1 %exitcond, label %if.then.i, label %f1.exit

if.then.i:                                        ; preds = %for.cond
  %0 = add nuw i32 %smax, 1
  store i32 %0, ptr @f1.beenhere, align 4, !tbaa !5
  tail call void @abort() #8
  unreachable

f1.exit:                                          ; preds = %for.cond
  %cmp1.i.not = icmp eq i32 %inc.i28, 1
  br i1 %cmp1.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %f1.exit
  store i32 2, ptr @f1.beenhere, align 4, !tbaa !5
  ret i32 0

if.end:                                           ; preds = %f1.exit
  br i1 %tobool1.not, label %if.end3, label %for.cond, !llvm.loop !9

if.end3:                                          ; preds = %if.end
  store i32 %inc.i, ptr @f1.beenhere, align 4, !tbaa !5
  %conv = trunc i32 %d.addr.0.ph to i16
  store i16 %conv, ptr %c4, align 8, !tbaa !11
  %1 = load i32, ptr %p, align 8, !tbaa !16
  %tobool6.not = icmp eq i32 %1, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end3
  tail call void @abort() #8
  unreachable

if.end8:                                          ; preds = %if.end3
  br i1 %tobool9.not, label %sw.epilog, label %if.then10

if.then10:                                        ; preds = %if.end8
  tail call void @abort() #8
  unreachable

sw.epilog:                                        ; preds = %if.end8
  %sext = shl i32 %d.addr.0.ph, 16
  %conv13 = ashr exact i32 %sext, 16
  br label %for.cond.outer, !llvm.loop !9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 2) i32 @f1(ptr noundef readnone captures(none) %p) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @f1.beenhere, align 4, !tbaa !5
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @f1.beenhere, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #8
  unreachable

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %0, 1
  %conv = zext i1 %cmp1 to i32
  ret i32 %conv
}

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local void @f2() local_unnamed_addr #2 {
entry:
  tail call void @abort() #8
  unreachable
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %s = alloca %struct.xx, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %s) #9
  store i32 0, ptr %s, align 8, !tbaa !16
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 4
  store i32 0, ptr %0, align 4
  %b = getelementptr inbounds nuw i8, ptr %s, i64 8
  store ptr %s, ptr %b, align 8, !tbaa !17
  %c = getelementptr inbounds nuw i8, ptr %s, i64 16
  store i16 23, ptr %c, align 8, !tbaa !11
  %1 = getelementptr inbounds nuw i8, ptr %s, i64 18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %1, i8 0, i64 6, i1 false)
  %f1.beenhere.promoted31.i = load i32, ptr @f1.beenhere, align 4, !tbaa !5
  %exitcond.i14 = icmp sgt i32 %f1.beenhere.promoted31.i, 1
  br i1 %exitcond.i14, label %if.then.i.i, label %f1.exit.i.preheader

f1.exit.i.preheader:                              ; preds = %entry
  %cmp1.i.not.i17 = icmp eq i32 %f1.beenhere.promoted31.i, 1
  br i1 %cmp1.i.not.i17, label %foo.exit, label %if.end.i.preheader

if.end.i.preheader:                               ; preds = %f1.exit.i.preheader
  store i16 0, ptr %c, align 8, !tbaa !11
  br label %if.end.i

if.then.i.i:                                      ; preds = %entry
  %2 = add nuw i32 %f1.beenhere.promoted31.i, 1
  store i32 %2, ptr @f1.beenhere, align 4, !tbaa !5
  call void @abort() #8
  unreachable

if.end.i:                                         ; preds = %if.end.i, %if.end.i.preheader
  %inc.i.lcssa3032.i1518 = phi i32 [ %inc.i.i16, %if.end.i ], [ %f1.beenhere.promoted31.i, %if.end.i.preheader ]
  %inc.i.i16 = add nsw i32 %inc.i.lcssa3032.i1518, 1
  %cmp1.i.not.i = icmp eq i32 %inc.i.lcssa3032.i1518, 0
  br i1 %cmp1.i.not.i, label %foo.exit.loopexit, label %if.end.i

foo.exit.loopexit:                                ; preds = %if.end.i
  store i32 %inc.i.i16, ptr @f1.beenhere, align 4, !tbaa !5
  br label %foo.exit

foo.exit:                                         ; preds = %foo.exit.loopexit, %f1.exit.i.preheader
  store i32 2, ptr @f1.beenhere, align 4, !tbaa !5
  %3 = load i16, ptr %c, align 8
  %cmp8.not = icmp eq i16 %3, 0
  br i1 %cmp8.not, label %if.end, label %if.then

if.then:                                          ; preds = %foo.exit
  call void @abort() #8
  unreachable

if.end:                                           ; preds = %foo.exit
  call void @exit(i32 noundef 0) #8
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!12, !15, i64 16}
!12 = !{!"xx", !6, i64 0, !13, i64 8, !15, i64 16}
!13 = !{!"p1 _ZTS2xx", !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!"short", !7, i64 0}
!16 = !{!12, !6, i64 0}
!17 = !{!12, !13, i64 8}
