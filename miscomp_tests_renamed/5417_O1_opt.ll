; 150125004381767992152773871027179050452
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/150125004381767992152773871027179050452_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/150125004381767992152773871027179050452.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.B = type { %struct.C, ptr }
%struct.C = type { %struct.D, i64, i64, i64, i64, i64 }
%struct.D = type { i32, ptr }

@y = dso_local global %struct.B zeroinitializer, align 8
@x = dso_local global %struct.B zeroinitializer, align 8

; Function Attrs: nounwind uwtable
define dso_local void @foo(ptr noundef captures(none) %x, ptr noundef captures(none) %y) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @func2() #5
  %b2 = getelementptr inbounds nuw i8, ptr %y, i64 56
  %0 = load ptr, ptr %b2, align 8, !tbaa !5
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  %c3 = getelementptr inbounds nuw i8, ptr %x, i64 24
  %1 = load i64, ptr %c3, align 8, !tbaa !16
  %cmp1 = icmp eq i64 %1, -1
  br i1 %cmp1, label %if.then2, label %if.end14

if.then2:                                         ; preds = %if.end
  %c34 = getelementptr inbounds nuw i8, ptr %y, i64 24
  %2 = load i64, ptr %c34, align 8, !tbaa !16
  store i64 %2, ptr %c3, align 8, !tbaa !16
  %c4 = getelementptr inbounds nuw i8, ptr %y, i64 32
  %3 = load i64, ptr %c4, align 8, !tbaa !17
  %c49 = getelementptr inbounds nuw i8, ptr %x, i64 32
  store i64 %3, ptr %c49, align 8, !tbaa !17
  store i64 -1, ptr %c34, align 8, !tbaa !16
  store i64 0, ptr %c4, align 8, !tbaa !17
  br label %if.end14

if.end14:                                         ; preds = %if.then2, %if.end
  %c316 = getelementptr inbounds nuw i8, ptr %y, i64 24
  %4 = load i64, ptr %c316, align 8, !tbaa !16
  %cmp17.not = icmp eq i64 %4, -1
  br i1 %cmp17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end14
  tail call void @abort() #6
  unreachable

if.end19:                                         ; preds = %if.end14
  ret void
}

declare i32 @func2(...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  store i32 6, ptr @y, align 8, !tbaa !18
  store i64 145, ptr getelementptr inbounds nuw (i8, ptr @y, i64 24), align 8, !tbaa !16
  store i64 2448, ptr getelementptr inbounds nuw (i8, ptr @y, i64 32), align 8, !tbaa !17
  store i64 -1, ptr getelementptr inbounds nuw (i8, ptr @x, i64 24), align 8, !tbaa !16
  tail call void @foo(ptr noundef nonnull @x, ptr noundef nonnull @y)
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
!16 = !{!6, !14, i64 24}
!17 = !{!6, !14, i64 32}
!18 = !{!6, !9, i64 0}
