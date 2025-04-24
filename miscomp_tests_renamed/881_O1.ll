; 11577894298786642003224672571210762315
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/11577894298786642003224672571210762315.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/11577894298786642003224672571210762315.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64, [48 x i8] }
%struct.vc = type { ptr }

@a_con = dso_local global %struct.vc_data zeroinitializer, align 8
@vc_cons = dso_local local_unnamed_addr global <{ %struct.vc, [62 x %struct.vc] }> <{ %struct.vc { ptr @a_con }, [62 x %struct.vc] zeroinitializer }>, align 16
@default_red = dso_local local_unnamed_addr global [16 x i32] zeroinitializer, align 16
@default_grn = dso_local local_unnamed_addr global [16 x i32] zeroinitializer, align 16
@default_blu = dso_local local_unnamed_addr global [16 x i32] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @reset_palette(i32 noundef %currcons) local_unnamed_addr #0 {
entry:
  %idxprom1 = sext i32 %currcons to i64
  %arrayidx2 = getelementptr inbounds [63 x %struct.vc], ptr @vc_cons, i64 0, i64 %idxprom1
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv38 = phi i64 [ 0, %entry ], [ %indvars.iv.next39, %for.body ]
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds nuw [16 x i32], ptr @default_red, i64 0, i64 %indvars.iv38
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %conv = trunc i32 %0 to i8
  %1 = load ptr, ptr %arrayidx2, align 8, !tbaa !9
  %vc_palette = getelementptr inbounds nuw i8, ptr %1, i64 8
  %2 = add nuw nsw i64 %indvars.iv, 1
  %arrayidx4 = getelementptr inbounds nuw [48 x i8], ptr %vc_palette, i64 0, i64 %indvars.iv
  store i8 %conv, ptr %arrayidx4, align 1, !tbaa !13
  %arrayidx6 = getelementptr inbounds nuw [16 x i32], ptr @default_grn, i64 0, i64 %indvars.iv38
  %3 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %conv7 = trunc i32 %3 to i8
  %4 = load ptr, ptr %arrayidx2, align 8, !tbaa !9
  %vc_palette11 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %5 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx14 = getelementptr inbounds nuw [48 x i8], ptr %vc_palette11, i64 0, i64 %2
  store i8 %conv7, ptr %arrayidx14, align 1, !tbaa !13
  %arrayidx16 = getelementptr inbounds nuw [16 x i32], ptr @default_blu, i64 0, i64 %indvars.iv38
  %6 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %conv17 = trunc i32 %6 to i8
  %7 = load ptr, ptr %arrayidx2, align 8, !tbaa !9
  %vc_palette21 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3
  %arrayidx24 = getelementptr inbounds nuw [48 x i8], ptr %vc_palette21, i64 0, i64 %5
  store i8 %conv17, ptr %arrayidx24, align 1, !tbaa !13
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next39, 16
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !14

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @bar(i32 noundef %k) local_unnamed_addr #1 {
entry:
  %cmp.not = icmp eq i32 %k, 48
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  tail call void @reset_palette(i32 noundef 0)
  tail call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"vc", !11, i64 0}
!11 = !{!"p1 _ZTS7vc_data", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!7, !7, i64 0}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
