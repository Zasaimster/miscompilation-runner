; 113808282886330128607995189542823856226
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/113808282886330128607995189542823856226.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/113808282886330128607995189542823856226.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bytes = dso_local local_unnamed_addr global [5 x i8] zeroinitializer, align 1
@flag = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @add_unwind_adjustsp(i64 noundef %offset) local_unnamed_addr #0 {
entry:
  %sub = add nsw i64 %offset, -516
  %shr = ashr i64 %sub, 2
  %0 = load i32, ptr @flag, align 4
  %tobool6.not = icmp eq i32 %0, 0
  br label %do.body

do.body:                                          ; preds = %if.end8, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end8 ], [ 0, %entry ]
  %o.0 = phi i64 [ %shr1, %if.end8 ], [ %shr, %entry ]
  %arrayidx = getelementptr inbounds nuw [5 x i8], ptr @bytes, i64 0, i64 %indvars.iv
  br label %a

a:                                                ; preds = %if.then, %do.body
  %o.1 = phi i64 [ %o.0, %do.body ], [ %shr1, %if.then ]
  %shr1 = lshr i64 %o.1, 7
  %tobool.not = icmp ult i64 %o.1, 128
  br i1 %tobool.not, label %if.end8.split.loop.exit16, label %if.then

if.then:                                          ; preds = %a
  br i1 %tobool6.not, label %if.end8.split.loop.exit, label %a

if.end8.split.loop.exit:                          ; preds = %if.then
  %1 = trunc i64 %o.0 to i8
  %or.le = or i8 %1, -128
  br label %if.end8

if.end8.split.loop.exit16:                        ; preds = %a
  %2 = trunc nuw i64 %o.1 to i8
  br label %if.end8

if.end8:                                          ; preds = %if.end8.split.loop.exit16, %if.end8.split.loop.exit
  %or15 = phi i8 [ %or.le, %if.end8.split.loop.exit ], [ %2, %if.end8.split.loop.exit16 ]
  store i8 %or15, ptr %arrayidx, align 1, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %tobool.not, label %do.end, label %do.body, !llvm.loop !8

do.end:                                           ; preds = %if.end8
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr @flag, align 4
  %tobool6.not.i = icmp eq i32 %0, 0
  br label %do.body.i

do.body.i:                                        ; preds = %if.end8.i, %entry
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %if.end8.i ], [ 0, %entry ]
  %o.0.i = phi i64 [ %shr1.i, %if.end8.i ], [ 904, %entry ]
  %arrayidx.i = getelementptr inbounds nuw [5 x i8], ptr @bytes, i64 0, i64 %indvars.iv.i
  br label %a.i

a.i:                                              ; preds = %if.then.i, %do.body.i
  %o.1.i = phi i64 [ %o.0.i, %do.body.i ], [ %shr1.i, %if.then.i ]
  %shr1.i = lshr i64 %o.1.i, 7
  %tobool.not.i = icmp samesign ult i64 %o.1.i, 128
  br i1 %tobool.not.i, label %if.end8.split.loop.exit16.i, label %if.then.i

if.then.i:                                        ; preds = %a.i
  br i1 %tobool6.not.i, label %if.end8.split.loop.exit.i, label %a.i

if.end8.split.loop.exit.i:                        ; preds = %if.then.i
  %1 = trunc i64 %o.0.i to i8
  %or.le.i = or i8 %1, -128
  br label %if.end8.i

if.end8.split.loop.exit16.i:                      ; preds = %a.i
  %2 = trunc nuw i64 %o.1.i to i8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end8.split.loop.exit16.i, %if.end8.split.loop.exit.i
  %or15.i = phi i8 [ %or.le.i, %if.end8.split.loop.exit.i ], [ %2, %if.end8.split.loop.exit16.i ]
  store i8 %or15.i, ptr %arrayidx.i, align 1, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %tobool.not.i, label %add_unwind_adjustsp.exit, label %do.body.i, !llvm.loop !8

add_unwind_adjustsp.exit:                         ; preds = %if.end8.i
  %3 = load i8, ptr @bytes, align 1, !tbaa !5
  %cmp = icmp ne i8 %3, -120
  %4 = load i8, ptr getelementptr inbounds nuw (i8, ptr @bytes, i64 1), align 1
  %cmp3 = icmp ne i8 %4, 7
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %add_unwind_adjustsp.exit
  tail call void @abort() #3
  unreachable

if.end:                                           ; preds = %add_unwind_adjustsp.exit
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
