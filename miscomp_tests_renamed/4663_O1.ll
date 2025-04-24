; 182358561409715859849733720933751137374
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/182358561409715859849733720933751137374.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/182358561409715859849733720933751137374.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IOGBounds = type { i16, i16, i16, i16 }

@expectedwidth = dso_local local_unnamed_addr global i32 50, align 4
@global_vramPtr = dso_local local_unnamed_addr global ptr inttoptr (i64 40960 to ptr), align 8
@global_bounds = dso_local local_unnamed_addr global %struct.IOGBounds { i16 100, i16 150, i16 100, i16 150 }, align 2
@global_saveRect = dso_local local_unnamed_addr global %struct.IOGBounds { i16 75, i16 175, i16 75, i16 175 }, align 2
@str = private unnamed_addr constant [14 x i8] c"Hello, World!\00", align 1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %saveRect.sroa.0.0.copyload = load i16, ptr @global_saveRect, align 2, !tbaa !5
  %saveRect.sroa.3.0.copyload = load i16, ptr getelementptr inbounds nuw (i8, ptr @global_saveRect, i64 2), align 2, !tbaa !5
  %bounds.sroa.2.0.copyload = load i16, ptr getelementptr inbounds nuw (i8, ptr @global_bounds, i64 2), align 2, !tbaa !5
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %spec.select = tail call i16 @llvm.smin.i16(i16 %saveRect.sroa.3.0.copyload, i16 %bounds.sroa.2.0.copyload)
  %conv10 = sext i16 %spec.select to i32
  %conv11 = sext i16 %saveRect.sroa.0.0.copyload to i32
  %sub12 = sub nsw i32 %conv10, %conv11
  %0 = load i32, ptr @expectedwidth, align 4, !tbaa !9
  %cmp13.not = icmp eq i32 %sub12, %0
  br i1 %cmp13.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %entry
  tail call void @abort() #5
  unreachable

if.end16:                                         ; preds = %entry
  tail call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #4

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
