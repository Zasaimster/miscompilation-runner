; 139308558705960981528394671228503636588
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/139308558705960981528394671228503636588_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/139308558705960981528394671228503636588.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xx = type { i32, ptr, i16 }

@f1.beenhere = internal unnamed_addr global i32 0, align 4

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @foo(ptr noundef captures(none) %p, i32 noundef %b, i32 noundef %c, i32 noundef %d) local_unnamed_addr #0 {
entry:
  %tobool1.not = icmp eq i32 %b, 0
  br i1 %tobool1.not, label %if.end3.lr.ph, label %for.cond, !llvm.loop !5

if.end3.lr.ph:                                    ; preds = %entry
  %c4 = getelementptr inbounds nuw i8, ptr %p, i64 16
  %0 = load i32, ptr %p, align 8, !tbaa !7
  %tobool6.not = icmp eq i32 %0, 0
  %tobool9.not = icmp eq i32 %c, 0
  %conv33 = trunc i32 %d to i16
  br i1 %tobool6.not, label %if.end8.preheader, label %if.then7

if.end8.preheader:                                ; preds = %if.end3.lr.ph
  %conv = trunc i32 %d to i16
  br label %if.end8

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond

if.then7:                                         ; preds = %if.end3.lr.ph
  store i16 %conv33, ptr %c4, align 8, !tbaa !15
  tail call void @abort() #6
  unreachable

if.end8:                                          ; preds = %if.end8, %if.end8.preheader
  %conv35 = phi i16 [ %conv33, %if.end8.preheader ], [ %conv, %if.end8 ]
  br i1 %tobool9.not, label %if.end8, label %if.then10

if.then10:                                        ; preds = %if.end8
  store i16 %conv35, ptr %c4, align 8, !tbaa !15
  tail call void @abort() #6
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local void @f2() local_unnamed_addr #2 {
entry:
  tail call void @abort() #6
  unreachable
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
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
  %call = call i32 @foo(ptr noundef nonnull %s, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 2) i32 @f1(ptr noundef readnone captures(none) %p) local_unnamed_addr #5 {
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

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
