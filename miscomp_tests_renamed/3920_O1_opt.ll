; 138504664549620452667075059142436555446
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/138504664549620452667075059142436555446_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/138504664549620452667075059142436555446.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Hello World\0A\00", align 1
@p = dso_local global ptr null, align 8

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  br label %lab

lab:                                              ; preds = %lab, %entry
  %n.0 = phi i32 [ 0, %entry ], [ %inc, %lab ]
  %call = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %rem = srem i32 %call, 1000
  %add = add nsw i32 %rem, 1
  %0 = zext i32 %add to i64
  %1 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %0, align 16
  store i32 1, ptr %vla, align 16, !tbaa !5
  %rem1 = urem i32 %n.0, 1000
  %idxprom = zext nneg i32 %rem1 to i64
  %arrayidx2 = getelementptr inbounds nuw i32, ptr %vla, i64 %idxprom
  store i32 2, ptr %arrayidx2, align 4, !tbaa !5
  store volatile ptr %vla, ptr @p, align 8, !tbaa !9
  %inc = add nuw nsw i32 %n.0, 1
  call void @llvm.stackrestore.p0(ptr %1)
  %exitcond.not = icmp eq i32 %inc, 1000000
  br i1 %exitcond.not, label %cleanup3, label %lab

cleanup3:                                         ; preds = %lab
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }

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
