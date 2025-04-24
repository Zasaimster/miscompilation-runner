; 14408778055761901155552347421228225893
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/14408778055761901155552347421228225893_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/14408778055761901155552347421228225893.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf = dso_local local_unnamed_addr global [5 x i16] [i16 1, i16 4, i16 16, i16 64, i16 256], align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 65536) i32 @bug(i16 noundef zeroext %value, ptr noundef readonly captures(address) %buffer, ptr noundef readnone captures(address) %bufend) local_unnamed_addr #1 {
entry:
  %cmp7 = icmp ult ptr %buffer, %bufend
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.body, %entry
  %tmp.09 = phi ptr [ %incdec.ptr, %for.body ], [ %buffer, %entry ]
  %value.addr.08 = phi i16 [ %sub, %for.body ], [ %value, %entry ]
  %0 = load i16, ptr %tmp.09, align 2, !tbaa !5
  %sub = sub i16 %value.addr.08, %0
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %tmp.09, i64 2
  %cmp = icmp ult ptr %incdec.ptr, %bufend
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.body, %entry
  %value.addr.0.lcssa = phi i16 [ %value, %entry ], [ %sub, %for.body ]
  %conv3 = zext i16 %value.addr.0.lcssa to i32
  ret i32 %conv3
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
