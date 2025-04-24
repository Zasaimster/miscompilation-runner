; 169300782696144887432374311818134907855
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/169300782696144887432374311818134907855.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/169300782696144887432374311818134907855.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xx = type { i32, ptr, i16 }

@f1.beenhere = internal unnamed_addr global i32 0, align 4

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @foo(ptr noundef %p, i32 noundef %b, i32 noundef %c, i32 noundef %d) local_unnamed_addr #0 {
entry:
  %add.ptr = getelementptr inbounds nuw i8, ptr %p, i64 24
  %0 = ptrtoint ptr %add.ptr to i64
  %1 = and i64 %0, 4294967295
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %for.cond.outer.split.lr.ph, label %if.then

for.cond.outer.split.lr.ph:                       ; preds = %entry
  %tobool1.not = icmp eq i32 %b, 0
  %c4 = getelementptr inbounds nuw i8, ptr %p, i64 16
  %tobool9.not = icmp eq i32 %c, 0
  br i1 %tobool1.not, label %for.cond.outer.split.lr.ph.split, label %for.cond, !llvm.loop !5

for.cond.outer.split.lr.ph.split:                 ; preds = %for.cond.outer.split.lr.ph
  %2 = load i32, ptr %p, align 8, !tbaa !7
  %tobool6.not = icmp eq i32 %2, 0
  br label %for.cond.outer.split

for.cond.outer.split:                             ; preds = %if.end8, %for.cond.outer.split.lr.ph.split
  br i1 %tobool6.not, label %if.end8, label %if.then7

for.cond:                                         ; preds = %for.cond.outer.split.lr.ph, %for.cond
  br label %for.cond

if.then:                                          ; preds = %entry
  ret i32 0

if.then7:                                         ; preds = %for.cond.outer.split
  %conv.le33 = trunc i32 %d to i16
  store i16 %conv.le33, ptr %c4, align 8, !tbaa !15
  tail call void @abort() #6
  unreachable

if.end8:                                          ; preds = %for.cond.outer.split
  br i1 %tobool9.not, label %for.cond.outer.split, label %if.then10

if.then10:                                        ; preds = %if.end8
  %conv.le31 = trunc i32 %d to i16
  store i16 %conv.le31, ptr %c4, align 8, !tbaa !15
  tail call void @abort() #6
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local void @f2() local_unnamed_addr #2 {
entry:
  tail call void @abort() #6
  unreachable
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %s = alloca %struct.xx, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %s) #7
  store i32 0, ptr %s, align 8, !tbaa !7
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 4
  store i32 0, ptr %0, align 4
  %b = getelementptr inbounds nuw i8, ptr %s, i64 8
  store ptr %s, ptr %b, align 8, !tbaa !16
  %c = getelementptr inbounds nuw i8, ptr %s, i64 16
  store i16 23, ptr %c, align 8, !tbaa !15
  %1 = getelementptr inbounds nuw i8, ptr %s, i64 18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %1, i8 0, i64 6, i1 false)
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %s, i64 24
  %2 = ptrtoint ptr %add.ptr.i to i64
  %3 = and i64 %2, 4294967288
  %tobool.not.i = icmp eq i64 %3, 0
  br i1 %tobool.not.i, label %for.cond.outer.split.i, label %if.then

for.cond.outer.split.i:                           ; preds = %entry, %for.cond.outer.split.i
  br label %for.cond.outer.split.i

if.then:                                          ; preds = %entry
  call void @abort() #6
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 2) i32 @f1(ptr noundef readnone captures(none) %p) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @f1.beenhere, align 4, !tbaa !17
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @f1.beenhere, align 4, !tbaa !17
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %0, 1
  %conv = zext i1 %cmp1 to i32
  ret i32 %conv
}

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = !{!8, !9, i64 0}
!8 = !{!"xx", !9, i64 0, !12, i64 8, !14, i64 16}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"p1 _ZTS2xx", !13, i64 0}
!13 = !{!"any pointer", !10, i64 0}
!14 = !{!"short", !10, i64 0}
!15 = !{!8, !14, i64 16}
!16 = !{!8, !12, i64 8}
!17 = !{!9, !9, i64 0}
