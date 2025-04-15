; 167121428868175588432504939347173438506
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/167121428868175588432504939347173438506.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/167121428868175588432504939347173438506.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.B = type { %struct.C, ptr }
%struct.C = type { %struct.D, i64, i64, i64, i64, i64 }
%struct.D = type { i32, ptr }

@y = dso_local global %struct.B zeroinitializer, align 8
@x = dso_local global %struct.B zeroinitializer, align 8

; Function Attrs: nofree nounwind uwtable
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
  %tobool.not46 = icmp eq ptr %1, null
  br i1 %tobool.not46, label %if.end, label %for.body

for.body:                                         ; preds = %if.then, %for.body
  %a.047 = phi ptr [ %2, %for.body ], [ %1, %if.then ]
  %a2 = getelementptr inbounds nuw i8, ptr %a.047, i64 8
  store ptr %x, ptr %a2, align 8, !tbaa !16
  %2 = load ptr, ptr %a.047, align 8, !tbaa !19
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end, label %for.body, !llvm.loop !20

if.end:                                           ; preds = %for.body, %if.then, %entry
  %b27 = getelementptr inbounds nuw i8, ptr %y, i64 56
  %3 = load ptr, ptr %b27, align 8, !tbaa !5
  %cmp8.not = icmp eq ptr %3, null
  br i1 %cmp8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end
  tail call void @abort() #4
  unreachable

if.end10:                                         ; preds = %if.end
  %c3 = getelementptr inbounds nuw i8, ptr %x, i64 24
  %4 = load i64, ptr %c3, align 8, !tbaa !23
  %cmp12 = icmp eq i64 %4, -1
  br i1 %cmp12, label %if.then13, label %if.end25

if.then13:                                        ; preds = %if.end10
  %c315 = getelementptr inbounds nuw i8, ptr %y, i64 24
  %5 = load i64, ptr %c315, align 8, !tbaa !23
  store i64 %5, ptr %c3, align 8, !tbaa !23
  %c4 = getelementptr inbounds nuw i8, ptr %y, i64 32
  %6 = load i64, ptr %c4, align 8, !tbaa !24
  %c420 = getelementptr inbounds nuw i8, ptr %x, i64 32
  store i64 %6, ptr %c420, align 8, !tbaa !24
  store i64 -1, ptr %c315, align 8, !tbaa !23
  store i64 0, ptr %c4, align 8, !tbaa !24
  br label %if.end25

if.end25:                                         ; preds = %if.then13, %if.end10
  %c327 = getelementptr inbounds nuw i8, ptr %y, i64 24
  %7 = load i64, ptr %c327, align 8, !tbaa !23
  %cmp28.not = icmp eq i64 %7, -1
  br i1 %cmp28.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end25
  tail call void @abort() #4
  unreachable

if.end30:                                         ; preds = %if.end25
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  store i32 6, ptr @y, align 8, !tbaa !25
  store i64 145, ptr getelementptr inbounds nuw (i8, ptr @y, i64 24), align 8, !tbaa !23
  store i64 2448, ptr getelementptr inbounds nuw (i8, ptr @y, i64 32), align 8, !tbaa !24
  store i64 -1, ptr getelementptr inbounds nuw (i8, ptr @x, i64 24), align 8, !tbaa !23
  tail call void @foo(ptr noundef nonnull @x, ptr noundef nonnull @y)
  tail call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
