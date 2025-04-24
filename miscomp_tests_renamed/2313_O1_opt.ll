; 140200025140280925715908318214657355410
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/140200025140280925715908318214657355410_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/140200025140280925715908318214657355410.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.T = type { i64, [0 x %struct.S] }
%struct.S = type { i64 }

@t = dso_local global %struct.T zeroinitializer, align 8

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %umin = tail call i64 @llvm.umin.i64(i64 add (i64 ptrtoint (ptr @t to i64), i64 648), i64 add (i64 ptrtoint (ptr @t to i64), i64 8))
  %0 = sub i64 add (i64 ptrtoint (ptr @t to i64), i64 655), %umin
  %1 = and i64 %0, -8
  %2 = sub i64 656, %1
  %scevgep = getelementptr i8, ptr @t, i64 %2
  %3 = add i64 %1, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 -1, i64 %3, i1 false), !tbaa !5
  %umin15 = tail call i64 @llvm.umin.i64(i64 add (i64 ptrtoint (ptr @t to i64), i64 648), i64 add (i64 ptrtoint (ptr @t to i64), i64 8))
  %4 = sub i64 add (i64 ptrtoint (ptr @t to i64), i64 655), %umin15
  %5 = and i64 %4, -8
  %6 = sub i64 648, %5
  %scevgep16 = getelementptr i8, ptr @t, i64 %6
  store i64 0, ptr %scevgep16, align 8, !tbaa !5
  %notsub = add i64 %5, -641
  %cmp3 = icmp slt i64 %notsub, -1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %entry
  tail call void @abort() #4
  unreachable

if.end5:                                          ; preds = %entry
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"S", !7, i64 0}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
