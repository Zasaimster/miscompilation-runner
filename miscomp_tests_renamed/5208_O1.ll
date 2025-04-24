; 191981566339004180296734775767065645500
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/191981566339004180296734775767065645500.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/191981566339004180296734775767065645500.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nounwind uwtable
define dso_local void @find(ptr noundef readonly captures(address_is_null) %alistp) local_unnamed_addr #0 {
entry:
  %list.sroa.2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %list.sroa.2)
  %tobool.not = icmp eq ptr %alistp, null
  %blist.0.sroa.gep2 = getelementptr inbounds nuw i8, ptr %alistp, i64 12
  br i1 %tobool.not, label %if.else, label %if.end

if.else:                                          ; preds = %entry
  store i32 42, ptr %list.sroa.2, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %blist.0.sroa.phi = phi ptr [ %list.sroa.2, %if.else ], [ %blist.0.sroa.gep2, %entry ]
  %0 = load i32, ptr %blist.0.sroa.phi, align 4, !tbaa !5
  %cmp.not.i = icmp eq i32 %0, 42
  br i1 %cmp.not.i, label %aglChoosePixelFormat.exit, label %if.then.i

if.then.i:                                        ; preds = %if.end
  tail call void @abort() #4
  unreachable

aglChoosePixelFormat.exit:                        ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %list.sroa.2)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @aglChoosePixelFormat(ptr noundef readonly captures(none) %a) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i64 12
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp.not = icmp eq i32 %0, 42
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  ret i32 0
}

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
