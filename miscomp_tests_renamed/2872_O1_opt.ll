; 150350652954944641083050602203204376175
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/150350652954944641083050602203204376175_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/150350652954944641083050602203204376175.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ty = type { ptr, ptr }

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@b = dso_local global [6 x i8] zeroinitializer, align 1
@s = dso_local local_unnamed_addr global %struct.input_ty zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @input_getc_complicated(ptr noundef readnone captures(none) %x) local_unnamed_addr #0 {
entry:
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @check_header(ptr noundef captures(none) %deeper) local_unnamed_addr #1 {
entry:
  %call9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp10 = icmp slt i32 %call9, 6
  br i1 %cmp10, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %buffer_end = getelementptr inbounds nuw i8, ptr %deeper, i64 8
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %0 = load ptr, ptr %deeper, align 8, !tbaa !5
  %1 = load ptr, ptr %buffer_end, align 8, !tbaa !11
  %cmp1 = icmp ult ptr %0, %1
  br i1 %cmp1, label %cond.true, label %for.inc

cond.true:                                        ; preds = %for.body
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %incdec.ptr, ptr %deeper, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %cond.true, %for.body
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp = icmp slt i32 %call, 6
  br i1 %cmp, label %for.body, label %cleanup, !llvm.loop !12

cleanup:                                          ; preds = %for.inc, %entry
  ret i32 1
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  store ptr @b, ptr @s, align 8, !tbaa !5
  store ptr getelementptr inbounds nuw (i8, ptr @b, i64 6), ptr getelementptr inbounds nuw (i8, ptr @s, i64 8), align 8, !tbaa !11
  %call9.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp10.i = icmp slt i32 %call9.i, 6
  br i1 %cmp10.i, label %for.body.i, label %check_header.exit

for.body.i:                                       ; preds = %for.inc.i, %entry
  %0 = load ptr, ptr @s, align 8, !tbaa !5
  %1 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @s, i64 8), align 8, !tbaa !11
  %cmp1.i = icmp ult ptr %0, %1
  br i1 %cmp1.i, label %cond.true.i, label %for.inc.i

cond.true.i:                                      ; preds = %for.body.i
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %incdec.ptr.i, ptr @s, align 8, !tbaa !5
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.true.i, %for.body.i
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp.i = icmp slt i32 %call.i, 6
  br i1 %cmp.i, label %for.body.i, label %check_header.exit, !llvm.loop !12

check_header.exit:                                ; preds = %for.inc.i, %entry
  %2 = load ptr, ptr @s, align 8, !tbaa !5
  %3 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @s, i64 8), align 8, !tbaa !11
  %cmp.not = icmp eq ptr %2, %3
  br i1 %cmp.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %check_header.exit
  tail call void @abort() #4
  unreachable

if.end2:                                          ; preds = %check_header.exit
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"input_ty", !7, i64 0, !7, i64 8}
!7 = !{!"p1 omnipotent char", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!6, !7, i64 8}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
