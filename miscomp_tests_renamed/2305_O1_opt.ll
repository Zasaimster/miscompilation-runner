; 124677681481836971418465670779330660346
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/124677681481836971418465670779330660346_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/124677681481836971418465670779330660346.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = dso_local global ptr null, align 8

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x = alloca [10 x i32], align 16
  br label %lab

lab:                                              ; preds = %lab, %entry
  %n.0 = phi i32 [ 5, %entry ], [ %inc7, %lab ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %x) #3
  store i32 1, ptr %x, align 16, !tbaa !5
  %rem = urem i32 %n.0, 1000
  %idxprom = zext nneg i32 %rem to i64
  %arrayidx1 = getelementptr inbounds nuw [10 x i32], ptr %x, i64 0, i64 %idxprom
  store i32 2, ptr %arrayidx1, align 4, !tbaa !5
  store volatile ptr %x, ptr @p, align 8, !tbaa !9
  %inc = add nuw nsw i32 %n.0, 1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %x) #3
  %rem2 = urem i32 %inc, 1000
  %add = add nuw nsw i32 %rem2, 1
  %0 = zext nneg i32 %add to i64
  %1 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %0, align 16
  store i32 1, ptr %vla, align 16, !tbaa !5
  %idxprom5 = zext nneg i32 %rem2 to i64
  %arrayidx6 = getelementptr inbounds nuw i32, ptr %vla, i64 %idxprom5
  store i32 2, ptr %arrayidx6, align 4, !tbaa !5
  store volatile ptr %vla, ptr @p, align 8, !tbaa !9
  %inc7 = add nuw nsw i32 %n.0, 2
  call void @llvm.stackrestore.p0(ptr %1)
  %cmp = icmp samesign ult i32 %n.0, 999998
  br i1 %cmp, label %lab, label %if.end

if.end:                                           ; preds = %lab
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #2

attributes #0 = { nofree norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }

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
!10 = !{!"any pointer", !7, i64 0}
