; 157033522822890016168832890627472577104
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/157033522822890016168832890627472577104.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/157033522822890016168832890627472577104.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.B = type { %struct.C, ptr }
%struct.C = type { %struct.D, i64, i64, i64, i64, i64 }
%struct.D = type { i32, ptr }

@.str = private unnamed_addr constant [20 x i8] c"This is dead code.\0A\00", align 1
@y = dso_local global %struct.B zeroinitializer, align 8
@x = dso_local global %struct.B zeroinitializer, align 8

; Function Attrs: nofree nounwind uwtable
define dso_local void @foo(ptr noundef %x, ptr noundef captures(none) %y) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %b2 = getelementptr inbounds nuw i8, ptr %y, i64 56
  %0 = load ptr, ptr %b2, align 8, !tbaa !5
  %b21 = getelementptr inbounds nuw i8, ptr %x, i64 56
  store ptr %0, ptr %b21, align 8, !tbaa !5
  store ptr null, ptr %b2, align 8, !tbaa !5
  %tobool.not40 = icmp eq ptr %0, null
  br i1 %tobool.not40, label %if.end, label %for.body

for.body:                                         ; preds = %if.then, %for.body
  %a.041 = phi ptr [ %1, %for.body ], [ %0, %if.then ]
  %a2 = getelementptr inbounds nuw i8, ptr %a.041, i64 8
  store ptr %x, ptr %a2, align 8, !tbaa !16
  %1 = load ptr, ptr %a.041, align 8, !tbaa !19
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %for.body, !llvm.loop !20

if.end:                                           ; preds = %for.body, %if.then, %entry
  %b23 = getelementptr inbounds nuw i8, ptr %y, i64 56
  %2 = load ptr, ptr %b23, align 8, !tbaa !5
  %cmp4.not = icmp eq ptr %2, null
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  tail call void @abort() #5
  unreachable

if.end6:                                          ; preds = %if.end
  %c3 = getelementptr inbounds nuw i8, ptr %x, i64 24
  %3 = load i64, ptr %c3, align 8, !tbaa !23
  %cmp8 = icmp eq i64 %3, -1
  br i1 %cmp8, label %if.then9, label %if.end21

if.then9:                                         ; preds = %if.end6
  %c311 = getelementptr inbounds nuw i8, ptr %y, i64 24
  %4 = load i64, ptr %c311, align 8, !tbaa !23
  store i64 %4, ptr %c3, align 8, !tbaa !23
  %c4 = getelementptr inbounds nuw i8, ptr %y, i64 32
  %5 = load i64, ptr %c4, align 8, !tbaa !24
  %c416 = getelementptr inbounds nuw i8, ptr %x, i64 32
  store i64 %5, ptr %c416, align 8, !tbaa !24
  store i64 -1, ptr %c311, align 8, !tbaa !23
  store i64 0, ptr %c4, align 8, !tbaa !24
  br label %if.end21

if.end21:                                         ; preds = %if.then9, %if.end6
  %c323 = getelementptr inbounds nuw i8, ptr %y, i64 24
  %6 = load i64, ptr %c323, align 8, !tbaa !23
  %cmp24.not = icmp eq i64 %6, -1
  br i1 %cmp24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end21
  tail call void @abort() #5
  unreachable

if.end26:                                         ; preds = %if.end21
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  store i32 6, ptr @y, align 8, !tbaa !25
  store i64 145, ptr getelementptr inbounds nuw (i8, ptr @y, i64 24), align 8, !tbaa !23
  store i64 2448, ptr getelementptr inbounds nuw (i8, ptr @y, i64 32), align 8, !tbaa !24
  store i64 -1, ptr getelementptr inbounds nuw (i8, ptr @x, i64 24), align 8, !tbaa !23
  tail call void @foo(ptr noundef nonnull @x, ptr noundef nonnull @y)
  tail call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

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
!23 = !{!6, !14, i64 24}
!24 = !{!6, !14, i64 32}
!25 = !{!6, !9, i64 0}
