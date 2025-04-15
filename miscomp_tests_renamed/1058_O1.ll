; 12246708990851340538833696339313920461
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/12246708990851340538833696339313920461.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/12246708990851340538833696339313920461.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32, i32 }
%struct.B = type { ptr, ptr }
%struct.C = type { ptr, ptr }

@.compoundliteral = internal global %struct.A { i32 1, i32 2 }, align 4
@.compoundliteral.1 = internal global %struct.A { i32 3, i32 4 }, align 4
@.compoundliteral.2 = internal global %struct.B { ptr @.compoundliteral, ptr @.compoundliteral.1 }, align 8
@.compoundliteral.3 = internal global %struct.A { i32 5, i32 6 }, align 4
@e = dso_local local_unnamed_addr global %struct.C { ptr @.compoundliteral.2, ptr @.compoundliteral.3 }, align 8

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @e, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !12
  %2 = load i32, ptr %1, align 4, !tbaa !14
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %3 = load i32, ptr %j, align 4, !tbaa !17
  %cmp2.not = icmp eq i32 %3, 2
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @abort() #3
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %b, align 8, !tbaa !18
  %5 = load i32, ptr %4, align 4, !tbaa !14
  %cmp4.not = icmp eq i32 %5, 3
  br i1 %cmp4.not, label %lor.lhs.false5, label %if.then9

lor.lhs.false5:                                   ; preds = %if.end
  %j7 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %6 = load i32, ptr %j7, align 4, !tbaa !17
  %cmp8.not = icmp eq i32 %6, 4
  br i1 %cmp8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %lor.lhs.false5, %if.end
  tail call void @abort() #3
  unreachable

if.end10:                                         ; preds = %lor.lhs.false5
  %7 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @e, i64 8), align 8, !tbaa !19
  %8 = load i32, ptr %7, align 4, !tbaa !14
  %cmp12.not = icmp eq i32 %8, 5
  br i1 %cmp12.not, label %lor.lhs.false13, label %if.then16

lor.lhs.false13:                                  ; preds = %if.end10
  %j14 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %9 = load i32, ptr %j14, align 4, !tbaa !17
  %cmp15.not = icmp eq i32 %9, 6
  br i1 %cmp15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %lor.lhs.false13, %if.end10
  tail call void @abort() #3
  unreachable

if.end17:                                         ; preds = %lor.lhs.false13
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @doNothing() local_unnamed_addr #2 {
entry:
  ret void
}

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"C", !7, i64 0, !11, i64 8}
!7 = !{!"p1 _ZTS1B", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"p1 _ZTS1A", !8, i64 0}
!12 = !{!13, !11, i64 0}
!13 = !{!"B", !11, i64 0, !11, i64 8}
!14 = !{!15, !16, i64 0}
!15 = !{!"A", !16, i64 0, !16, i64 4}
!16 = !{!"int", !9, i64 0}
!17 = !{!15, !16, i64 4}
!18 = !{!13, !11, i64 8}
!19 = !{!6, !11, i64 8}
