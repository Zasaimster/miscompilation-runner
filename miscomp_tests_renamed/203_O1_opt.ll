; 103521111556097614545999934561689678521
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/103521111556097614545999934561689678521_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/103521111556097614545999934561689678521.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local range(i32 -128, 128) i32 @main() local_unnamed_addr #0 {
entry:
  %e = alloca [0 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %e) #2
  %0 = load i32, ptr @a, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 131072
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds nuw i8, ptr %e, i64 131072
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %2 = sext i8 %1 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %f.0 = phi i32 [ %2, %if.then ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %e) #2
  ret i32 %f.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

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
!9 = !{!7, !7, i64 0}
