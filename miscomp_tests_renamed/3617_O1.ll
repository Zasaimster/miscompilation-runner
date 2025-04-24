; 163062730081586786259705163782419790996
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/163062730081586786259705163782419790996.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/163062730081586786259705163782419790996.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.B = type { %struct.C, ptr }
%struct.C = type { %struct.D, i64, i64, i64, i64, i64 }
%struct.D = type { i32, ptr }

@y = dso_local global %struct.B zeroinitializer, align 8
@x = dso_local global %struct.B zeroinitializer, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @foo(ptr noundef %x, ptr noundef captures(none) %y) local_unnamed_addr #0 {
entry:
  %b2 = getelementptr inbounds nuw i8, ptr %x, i64 56
  %0 = load ptr, ptr %b2, align 8, !tbaa !5
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %b21 = getelementptr inbounds nuw i8, ptr %y, i64 56
  %1 = load ptr, ptr %b21, align 8, !tbaa !5
  store ptr %1, ptr %b2, align 8, !tbaa !5
  store ptr null, ptr %b21, align 8, !tbaa !5
  %tobool.not9 = icmp eq ptr %1, null
  br i1 %tobool.not9, label %if.end, label %for.body

for.body:                                         ; preds = %if.then, %for.body
  %a.010 = phi ptr [ %2, %for.body ], [ %1, %if.then ]
  %a2 = getelementptr inbounds nuw i8, ptr %a.010, i64 8
  store ptr %x, ptr %a2, align 8, !tbaa !16
  %2 = load ptr, ptr %a.010, align 8, !tbaa !19
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end, label %for.body, !llvm.loop !20

if.end:                                           ; preds = %for.body, %if.then, %entry
  ret void
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  store i32 6, ptr @y, align 8, !tbaa !23
  store i64 145, ptr getelementptr inbounds nuw (i8, ptr @y, i64 24), align 8, !tbaa !24
  store i64 2448, ptr getelementptr inbounds nuw (i8, ptr @y, i64 32), align 8, !tbaa !25
  store i64 -1, ptr getelementptr inbounds nuw (i8, ptr @x, i64 24), align 8, !tbaa !24
  tail call void @foo(ptr noundef nonnull @x, ptr noundef nonnull @y)
  tail call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !15, i64 56}
!6 = !{!"B", !7, i64 0, !15, i64 56}
!7 = !{!"C", !8, i64 0, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48}
!8 = !{!"D", !9, i64 0, !12, i64 8}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"p1 _ZTS1D", !13, i64 0}
!13 = !{!"any pointer", !10, i64 0}
!14 = !{!"long", !10, i64 0}
!15 = !{!"p1 _ZTS1A", !13, i64 0}
!16 = !{!17, !18, i64 8}
!17 = !{!"A", !15, i64 0, !18, i64 8}
!18 = !{!"p1 _ZTS1C", !13, i64 0}
!19 = !{!17, !15, i64 0}
!20 = distinct !{!20, !21, !22}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = !{!6, !9, i64 0}
!24 = !{!6, !14, i64 24}
!25 = !{!6, !14, i64 32}
