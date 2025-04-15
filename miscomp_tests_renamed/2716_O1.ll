; 193691209621395117245462214703143820212
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/193691209621395117245462214703143820212.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/193691209621395117245462214703143820212.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { [0 x i32] }

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local x86_fp80 @f(i32 noundef %pa, x86_fp80 noundef %pc) local_unnamed_addr #0 {
entry:
  %pb = alloca %struct.s, align 4
  %0 = load i32, ptr %pb, align 4, !tbaa !5
  %conv = sitofp i32 %0 to x86_fp80
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %pc.addr.04 = phi x86_fp80 [ %pc, %entry ], [ %add, %for.body ]
  %add = fadd x86_fp80 %pc.addr.04, %conv
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !9

for.end:                                          ; preds = %for.body
  ret x86_fp80 %add
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %pb.i = alloca %struct.s, align 4
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %pb.i)
  %0 = load i32, ptr %pb.i, align 4, !tbaa !5
  %conv.i = sitofp i32 %0 to x86_fp80
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %i.05.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i ]
  %pc.addr.04.i = phi x86_fp80 [ 0xK400C9C40000000000000, %entry ], [ %add.i, %for.body.i ]
  %add.i = fadd x86_fp80 %pc.addr.04.i, %conv.i
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 5
  br i1 %exitcond.not.i, label %f.exit, label %for.body.i, !llvm.loop !9

f.exit:                                           ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %pb.i)
  %cmp1 = fcmp une x86_fp80 %add.i, 0xK400C9E60000000000000
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %f.exit
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %f.exit
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #5

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noreturn nounwind }

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
