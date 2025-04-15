; 163447697893786236388742359611719489796
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/163447697893786236388742359611719489796.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/163447697893786236388742359611719489796.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.F = type { i32 }

; Function Attrs: nofree nounwind uwtable
define dso_local void @f1(ptr noundef %x, ptr noundef readonly captures(none) %y) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %x, align 4, !tbaa !5
  %1 = load i32, ptr %y, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %0, %1
  br i1 %cmp7, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %x, i64 20
  %2 = ptrtoint ptr %add.ptr to i64
  %3 = trunc i64 %2 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %4 = phi i32 [ %inc4, %for.inc ], [ %0, %for.body.preheader ]
  %timeout.08 = phi i32 [ %inc, %for.inc ], [ %3, %for.body.preheader ]
  %cmp2 = icmp sgt i32 %timeout.08, 4
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  tail call void @abort() #5
  unreachable

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %timeout.08, 1
  %inc4 = add nsw i32 %4, 1
  store i32 %inc4, ptr %x, align 4, !tbaa !5
  %5 = load i32, ptr %y, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc4, %5
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !10

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %x = alloca %struct.F, align 4
  %y = alloca %struct.F, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y) #6
  store i32 0, ptr %x, align 4, !tbaa !5
  store i32 1, ptr %y, align 4, !tbaa !5
  call void @f1(ptr noundef nonnull %x, ptr noundef nonnull %y)
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"F", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
