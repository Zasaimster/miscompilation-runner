; 172210989591253639541787022026811351422
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/172210989591253639541787022026811351422.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/172210989591253639541787022026811351422.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @foo(i32 noundef %x, ptr noundef readonly captures(none) %y) local_unnamed_addr #0 {
entry:
  %0 = load i64, ptr %y, align 8, !tbaa !5
  %conv = trunc i64 %0 to i32
  ret i32 %conv
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %sh = alloca [10 x i16], align 16
  %c = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sh) #5
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %c) #5
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %conv = trunc i64 %indvars.iv to i16
  %arrayidx = getelementptr inbounds nuw [10 x i16], ptr %sh, i64 0, i64 %indvars.iv
  store i16 %conv, ptr %arrayidx, align 2, !tbaa !11
  %conv1 = trunc i64 %indvars.iv to i8
  %arrayidx3 = getelementptr inbounds nuw [10 x i8], ptr %c, i64 0, i64 %indvars.iv
  store i8 %conv1, ptr %arrayidx3, align 1, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %if.end, label %for.body, !llvm.loop !14

if.end:                                           ; preds = %for.body
  %add.ptr = getelementptr inbounds nuw i8, ptr %c, i64 3
  %0 = load i64, ptr %add.ptr, align 8, !tbaa !5
  %1 = and i64 %0, 4294967295
  %cmp7.not = icmp eq i64 %1, 3
  br i1 %cmp7.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end
  tail call void @abort() #6
  unreachable

if.end10:                                         ; preds = %if.end
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %sh, i64 6
  %2 = load i64, ptr %add.ptr12, align 8, !tbaa !5
  %3 = and i64 %2, 4294967295
  %cmp14.not = icmp eq i64 %3, 3
  br i1 %cmp14.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end10
  tail call void @abort() #6
  unreachable

if.end17:                                         ; preds = %if.end10
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!5 = !{!6, !7, i64 0}
!6 = !{!"s", !7, i64 0, !10, i64 8}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!8, !8, i64 0}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
