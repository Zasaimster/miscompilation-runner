; 195348010477383679169075824581894380572
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/195348010477383679169075824581894380572_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/195348010477383679169075824581894380572.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@foo = dso_local local_unnamed_addr global i32 10, align 4
@bar = dso_local local_unnamed_addr global ptr null, align 8
@baz = dso_local local_unnamed_addr global i32 100, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @pure_alloc() local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @bar, align 8, !tbaa !5
  %1 = load i32, ptr @baz, align 4, !tbaa !9
  %foo.promoted = load i32, ptr @foo, align 4, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %2 = phi i32 [ 0, %while.cond ], [ %foo.promoted, %entry ]
  %add = add nsw i32 %2, 2
  %cmp = icmp ult i32 %add, %1
  br i1 %cmp, label %if.then, label %while.cond, !llvm.loop !11

if.then:                                          ; preds = %while.cond
  store i32 %add, ptr @foo, align 4, !tbaa !9
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %idx.ext
  %3 = ptrtoint ptr %add.ptr to i64
  %and = and i64 %3, 4294967294
  %4 = inttoptr i64 %and to ptr
  ret ptr %4
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr @baz, align 4, !tbaa !9
  %foo.promoted.i = load i32, ptr @foo, align 4, !tbaa !9
  %1 = add nsw i32 %foo.promoted.i, 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %entry
  %add.i = phi i32 [ 2, %while.cond.i ], [ %1, %entry ]
  %cmp.i = icmp ult i32 %add.i, %0
  br i1 %cmp.i, label %pure_alloc.exit, label %while.cond.i, !llvm.loop !11

pure_alloc.exit:                                  ; preds = %while.cond.i
  store i32 %add.i, ptr @foo, align 4, !tbaa !9
  %tobool.not = icmp eq i32 %add.i, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %pure_alloc.exit
  tail call void @abort() #3
  unreachable

if.end:                                           ; preds = %pure_alloc.exit
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
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
