; 127761526727102167558905833316258598160
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/127761526727102167558905833316258598160_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/127761526727102167558905833316258598160.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client_s = type { i32, i32, [0 x %struct.client_frame_t] }
%struct.client_frame_t = type { double, float, %struct.packet_entities_t }
%struct.packet_entities_t = type { i32, ptr }

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @CalcPing(ptr noundef readonly captures(none) %cl) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %cl, align 8, !tbaa !5
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %ping1 = getelementptr inbounds nuw i8, ptr %cl, i64 4
  %1 = load i32, ptr %ping1, align 4, !tbaa !10
  br label %cleanup

if.end:                                           ; preds = %entry
  %frames = getelementptr inbounds nuw i8, ptr %cl, i64 8
  br label %for.body

for.body:                                         ; preds = %for.body, %if.end
  %frame.026 = phi ptr [ %frames, %if.end ], [ %incdec.ptr, %for.body ]
  %i.025 = phi i32 [ 0, %if.end ], [ %inc7, %for.body ]
  %count.024 = phi i32 [ 0, %if.end ], [ %count.1, %for.body ]
  %ping.023 = phi float [ 0.000000e+00, %if.end ], [ %ping.1, %for.body ]
  %ping_time = getelementptr inbounds nuw i8, ptr %frame.026, i64 8
  %2 = load float, ptr %ping_time, align 8, !tbaa !11
  %cmp3 = fcmp ogt float %2, 0.000000e+00
  %add = fadd float %ping.023, %2
  %ping.1 = select i1 %cmp3, float %add, float %ping.023
  %inc = zext i1 %cmp3 to i32
  %count.1 = add nuw nsw i32 %count.024, %inc
  %inc7 = add nuw nsw i32 %i.025, 1
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %frame.026, i64 32
  %exitcond.not = icmp eq i32 %inc7, 64
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !17

for.end:                                          ; preds = %for.body
  %tobool.not = icmp eq i32 %count.1, 0
  br i1 %tobool.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %for.end
  %conv = uitofp nneg i32 %count.1 to float
  %div = fdiv float %ping.1, %conv
  %mul = fmul float %div, 1.000000e+03
  %conv10 = fptosi float %mul to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %for.end, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %conv10, %if.end9 ], [ 9999, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %cl = alloca %struct.client_s, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cl) #4
  store i64 0, ptr %cl, align 8
  %ping_time = getelementptr inbounds nuw i8, ptr %cl, i64 16
  store float 1.000000e+00, ptr %ping_time, align 8, !tbaa !11
  %frames.i = getelementptr inbounds nuw i8, ptr %cl, i64 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %frame.026.i = phi ptr [ %frames.i, %entry ], [ %incdec.ptr.i, %for.body.i ]
  %i.025.i = phi i32 [ 0, %entry ], [ %inc7.i, %for.body.i ]
  %count.024.i = phi i32 [ 0, %entry ], [ %count.1.i, %for.body.i ]
  %ping.023.i = phi float [ 0.000000e+00, %entry ], [ %ping.1.i, %for.body.i ]
  %ping_time.i = getelementptr inbounds nuw i8, ptr %frame.026.i, i64 8
  %0 = load float, ptr %ping_time.i, align 8, !tbaa !11
  %cmp3.i = fcmp ogt float %0, 0.000000e+00
  %add.i = fadd float %ping.023.i, %0
  %ping.1.i = select i1 %cmp3.i, float %add.i, float %ping.023.i
  %inc.i = zext i1 %cmp3.i to i32
  %count.1.i = add nuw nsw i32 %count.024.i, %inc.i
  %inc7.i = add nuw nsw i32 %i.025.i, 1
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %frame.026.i, i64 32
  %exitcond.not.i = icmp eq i32 %inc7.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i, !llvm.loop !17

for.end.i:                                        ; preds = %for.body.i
  %tobool.not.i = icmp eq i32 %count.1.i, 0
  br i1 %tobool.not.i, label %if.then, label %if.end9.i

if.end9.i:                                        ; preds = %for.end.i
  %conv.i = uitofp nneg i32 %count.1.i to float
  %div.i = fdiv float %ping.1.i, %conv.i
  %mul.i = fmul float %div.i, 1.000000e+03
  %conv10.i = fptosi float %mul.i to i32
  %1 = icmp eq i32 %conv10.i, 1000
  br i1 %1, label %if.end, label %if.then

if.then:                                          ; preds = %if.end9.i, %for.end.i
  tail call void @abort() #5
  unreachable

if.end:                                           ; preds = %if.end9.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cl) #4
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"client_s", !7, i64 0, !7, i64 4, !8, i64 8}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 4}
!11 = !{!12, !14, i64 8}
!12 = !{!"", !13, i64 0, !14, i64 8, !15, i64 16}
!13 = !{!"double", !8, i64 0}
!14 = !{!"float", !8, i64 0}
!15 = !{!"", !7, i64 0, !16, i64 8}
!16 = !{!"any pointer", !8, i64 0}
!17 = distinct !{!17, !18, !19}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.unroll.disable"}
