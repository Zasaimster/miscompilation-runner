; 13891694787858786669133027392750125328
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/13891694787858786669133027392750125328_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/13891694787858786669133027392750125328.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bytes = dso_local local_unnamed_addr global [5 x i8] zeroinitializer, align 1

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @add_unwind_adjustsp(i64 noundef %offset) local_unnamed_addr #0 {
entry:
  %sub = add nsw i64 %offset, -516
  %tobool.not12 = icmp ult i64 %sub, 4
  br i1 %tobool.not12, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  %shr = ashr i64 %sub, 2
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.preheader
  %indvars.iv = phi i64 [ 0, %while.body.preheader ], [ %indvars.iv.next, %while.body ]
  %o.014 = phi i64 [ %shr, %while.body.preheader ], [ %shr1, %while.body ]
  %0 = trunc i64 %o.014 to i8
  %conv = and i8 %0, 127
  %arrayidx = getelementptr inbounds nuw [5 x i8], ptr @bytes, i64 0, i64 %indvars.iv
  %shr1 = lshr i64 %o.014, 7
  %tobool2.not = icmp ult i64 %o.014, 128
  %masksel = select i1 %tobool2.not, i8 0, i8 -128
  %storemerge = or disjoint i8 %conv, %masksel
  store i8 %storemerge, ptr %arrayidx, align 1, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %tobool.not = icmp ult i64 %o.014, 128
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !8

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %while.body.i ]
  %o.014.i = phi i64 [ 904, %entry ], [ %shr1.i, %while.body.i ]
  %0 = trunc i64 %o.014.i to i8
  %conv.i = and i8 %0, 127
  %arrayidx.i = getelementptr inbounds nuw [5 x i8], ptr @bytes, i64 0, i64 %indvars.iv.i
  %shr1.i = lshr i64 %o.014.i, 7
  %tobool2.not.i = icmp samesign ult i64 %o.014.i, 128
  %masksel.i = select i1 %tobool2.not.i, i8 0, i8 -128
  %storemerge.i = or disjoint i8 %conv.i, %masksel.i
  store i8 %storemerge.i, ptr %arrayidx.i, align 1, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond = icmp eq i64 %indvars.iv.next.i, 2
  br i1 %exitcond, label %add_unwind_adjustsp.exit, label %while.body.i, !llvm.loop !8

add_unwind_adjustsp.exit:                         ; preds = %while.body.i
  %1 = load i8, ptr @bytes, align 1, !tbaa !5
  %cmp = icmp ne i8 %1, -120
  %2 = load i8, ptr getelementptr inbounds nuw (i8, ptr @bytes, i64 1), align 1
  %cmp3 = icmp ne i8 %2, 7
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

attributes #0 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
