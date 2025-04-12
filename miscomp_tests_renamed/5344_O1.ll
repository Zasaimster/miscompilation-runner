; 156218002437920115316492282259101198733
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/156218002437920115316492282259101198733.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/156218002437920115316492282259101198733.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ziggy = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"a = %d\0A\00", align 1
@bolshevic = dso_local local_unnamed_addr global %struct.ziggy zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"bolshevic.a = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"bolshevic.b = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"bolshevic.c = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"tsar->a = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"tsar->b = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"tsar->c = %d\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef undef)
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef undef)
  store i32 12, ptr @bolshevic, align 4, !tbaa !5
  store i32 34, ptr getelementptr inbounds nuw (i8, ptr @bolshevic, i64 4), align 4, !tbaa !10
  store i32 56, ptr getelementptr inbounds nuw (i8, ptr @bolshevic, i64 8), align 4, !tbaa !11
  %call2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 12)
  %0 = load i32, ptr getelementptr inbounds nuw (i8, ptr @bolshevic, i64 4), align 4, !tbaa !10
  %call3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0)
  %1 = load i32, ptr getelementptr inbounds nuw (i8, ptr @bolshevic, i64 8), align 4, !tbaa !11
  %call4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %1)
  %2 = load i32, ptr @bolshevic, align 4, !tbaa !5
  %call6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %2)
  %3 = load i32, ptr getelementptr inbounds nuw (i8, ptr @bolshevic, i64 4), align 4, !tbaa !10
  %call8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %3)
  %4 = load i32, ptr getelementptr inbounds nuw (i8, ptr @bolshevic, i64 8), align 4, !tbaa !11
  %call10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %4)
  %5 = load i32, ptr getelementptr inbounds nuw (i8, ptr @bolshevic, i64 4), align 4, !tbaa !12
  %call11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %5)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"ziggy", !7, i64 0, !7, i64 4, !7, i64 8}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 4}
!11 = !{!6, !7, i64 8}
!12 = !{!7, !7, i64 0}
