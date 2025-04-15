; 172716432305997247636814355810195568301
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/172716432305997247636814355810195568301.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/172716432305997247636814355810195568301.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local local_unnamed_addr global i32 1, align 4
@c = dso_local global i32 0, align 4
@d = dso_local local_unnamed_addr global ptr @c, align 8
@f = dso_local local_unnamed_addr global i32 0, align 4
@j = dso_local local_unnamed_addr global i32 0, align 4
@a = dso_local local_unnamed_addr global i32 0, align 4
@h = dso_local local_unnamed_addr global i32 0, align 4
@g = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %l = alloca i32, align 4
  %0 = load i32, ptr @b, align 4, !tbaa !5
  %1 = load ptr, ptr @d, align 8, !tbaa !9
  %2 = load i32, ptr @a, align 4, !tbaa !5
  br label %for.body

for.cond14.preheader:                             ; preds = %for.end
  %conv = sext i32 %0 to i64
  %cmp5.le.le = icmp eq i32 %sub, 0
  %conv7.le.le = zext i1 %cmp5.le.le to i64
  %cmp8.le.le = icmp slt i64 %conv7.le.le, %conv
  store ptr %l, ptr @g, align 8, !tbaa !9
  br i1 %cmp8.le.le, label %if.end, label %if.then

for.body:                                         ; preds = %entry, %for.end
  %i.030 = phi i32 [ 0, %entry ], [ %inc11, %for.end ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l) #3
  store i32 0, ptr @f, align 4, !tbaa !5
  br label %for.body4

for.body4:                                        ; preds = %for.body, %for.body4
  %storemerge27 = phi i32 [ 0, %for.body ], [ %inc, %for.body4 ]
  %3 = load i32, ptr %1, align 4, !tbaa !5
  store i32 %3, ptr @j, align 4, !tbaa !5
  %mul = mul nsw i32 %2, %3
  %sub = add nsw i32 %mul, -1
  store i32 %sub, ptr @h, align 4, !tbaa !5
  %inc = add nuw nsw i32 %storemerge27, 1
  store i32 %inc, ptr @f, align 4, !tbaa !5
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body4, !llvm.loop !12

for.end:                                          ; preds = %for.body4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l) #3
  %inc11 = add nuw nsw i32 %i.030, 1
  %cmp = icmp eq i32 %i.030, 0
  br i1 %cmp, label %for.body, label %for.cond14.preheader, !llvm.loop !15

if.then:                                          ; preds = %for.cond14.preheader
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %for.cond14.preheader
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
