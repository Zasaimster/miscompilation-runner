; 113731595254932152948273828774534221813
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/113731595254932152948273828774534221813_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/113731595254932152948273828774534221813.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b)
  store i32 10, ptr %a, align 4, !tbaa !5
  store i32 20, ptr %b, align 4, !tbaa !5
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %while.end, %entry
  %i.021 = phi i32 [ 0, %entry ], [ %inc6, %while.end ]
  %x.020 = phi i32 [ 0, %entry ], [ %inc5, %while.end ]
  %pa.019 = phi ptr [ %a, %entry ], [ %b, %while.end ]
  br label %while.cond

while.cond:                                       ; preds = %while.body, %while.cond.preheader
  %pa.1 = phi ptr [ %b, %while.body ], [ %pa.019, %while.cond.preheader ]
  %x.1 = phi i32 [ %inc, %while.body ], [ %x.020, %while.cond.preheader ]
  %0 = load i32, ptr %pa.1, align 4, !tbaa !5
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %pa.1, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %inc = add nsw i32 %x.1, 1
  %cmp2 = icmp slt i32 %0, 4
  br i1 %cmp2, label %while.end, label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.body, %while.cond
  %x.2 = phi i32 [ %inc, %while.body ], [ %x.1, %while.cond ]
  %inc5 = add nsw i32 %x.2, 1
  %inc6 = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc6, 10
  br i1 %exitcond.not, label %for.end, label %while.cond.preheader, !llvm.loop !12

for.end:                                          ; preds = %while.end
  %b.0.b.0.22 = load i32, ptr %b, align 4, !tbaa !5
  %cmp7.not = icmp eq i32 %b.0.b.0.22, -5
  br i1 %cmp7.not, label %lor.lhs.false, label %if.then11

lor.lhs.false:                                    ; preds = %for.end
  %b.0.b.0.b.0. = load i32, ptr %b, align 4, !tbaa !5
  %cmp8 = icmp ne i32 %b.0.b.0.b.0., -5
  %cmp10 = icmp ne i32 %inc5, 43
  %or.cond = select i1 %cmp8, i1 true, i1 %cmp10
  br i1 %or.cond, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false, %for.end
  tail call void @abort() #4
  unreachable

if.end12:                                         ; preds = %lor.lhs.false
  tail call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
