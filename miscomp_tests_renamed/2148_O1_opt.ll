; 168518419545901221245231685547957234692
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/168518419545901221245231685547957234692_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/168518419545901221245231685547957234692.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf = dso_local local_unnamed_addr global [5 x i16] [i16 0, i16 4, i16 16, i16 64, i16 256], align 2

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %tmp.09.i.idx = phi i64 [ %tmp.09.i.add, %for.body.i ], [ 0, %entry ]
  %value.addr.08.i = phi i16 [ %sub.i, %for.body.i ], [ 512, %entry ]
  %tmp.09.i.ptr = getelementptr inbounds nuw i8, ptr @buf, i64 %tmp.09.i.idx
  %0 = load i16, ptr %tmp.09.i.ptr, align 2, !tbaa !5
  %sub.i = sub i16 %value.addr.08.i, %0
  %tmp.09.i.add = add nuw nsw i64 %tmp.09.i.idx, 2
  %cmp.i = icmp samesign ult i64 %tmp.09.i.idx, 4
  br i1 %cmp.i, label %for.body.i, label %bug.exit, !llvm.loop !9

bug.exit:                                         ; preds = %for.body.i
  %cmp.not = icmp eq i16 %sub.i, 491
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %bug.exit
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %bug.exit
  tail call void @exit(i32 noundef 0) #4
  unreachable
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

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
