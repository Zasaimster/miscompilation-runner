; 148926291132590572089291108242970005729
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/148926291132590572089291108242970005729.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/148926291132590572089291108242970005729.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp = dso_local local_unnamed_addr global ptr null, align 8
@m = dso_local local_unnamed_addr global i64 0, align 8
@main.r = internal unnamed_addr global [64 x i64] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @foo() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @bar(i32 noundef %rop, ptr noundef captures(none) %r) local_unnamed_addr #1 {
entry:
  %shr = lshr i32 %rop, 9
  %and3 = and i32 %shr, 511
  %and4 = and i32 %rop, 511
  %0 = load ptr, ptr @cp, align 8, !tbaa !5
  %idxprom5 = zext nneg i32 %and3 to i64
  %arrayidx6 = getelementptr inbounds nuw i64, ptr %r, i64 %idxprom5
  %tobool.not = icmp eq i32 %and4, 0
  %idxprom = zext nneg i32 %and3 to i64
  %arrayidx = getelementptr inbounds nuw i64, ptr %r, i64 %idxprom
  br label %top

top:                                              ; preds = %top, %entry
  %rs2.0 = phi i64 [ 0, %entry ], [ %and, %top ]
  %1 = load i64, ptr %arrayidx, align 8, !tbaa !10
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %r, i64 %rs2.0
  %2 = load i64, ptr %arrayidx2, align 8, !tbaa !10
  %add = add i64 %2, %1
  %and = and i64 %add, 511
  store i64 1, ptr %0, align 8, !tbaa !10
  %3 = load i64, ptr %arrayidx6, align 8, !tbaa !10
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %r, i64 %and
  %4 = load i64, ptr %arrayidx8, align 8, !tbaa !10
  %add9 = add i64 %4, %3
  store i64 %add9, ptr @m, align 8, !tbaa !10
  store i64 2, ptr %0, align 8, !tbaa !10
  br i1 %tobool.not, label %top, label %if.end

if.end:                                           ; preds = %top
  %idxprom10 = zext nneg i32 %and4 to i64
  %arrayidx11 = getelementptr inbounds nuw i64, ptr %r, i64 %idxprom10
  store i64 1, ptr %arrayidx11, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %cr = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cr) #6
  store ptr %cr, ptr @cp, align 8, !tbaa !5
  store i64 47, ptr getelementptr inbounds nuw (i8, ptr @main.r, i64 32), align 16, !tbaa !10
  store i64 11, ptr getelementptr inbounds nuw (i8, ptr @main.r, i64 64), align 16, !tbaa !10
  %0 = load i64, ptr @main.r, align 16, !tbaa !10
  %add.i = add i64 %0, 47
  %and.i = and i64 %add.i, 511
  store i64 1, ptr %cr, align 8, !tbaa !10
  %arrayidx8.i = getelementptr inbounds nuw i64, ptr @main.r, i64 %and.i
  %1 = load i64, ptr %arrayidx8.i, align 8, !tbaa !10
  %add9.i = add i64 %1, 47
  store i64 %add9.i, ptr @m, align 8, !tbaa !10
  store i64 2, ptr %cr, align 8, !tbaa !10
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @main.r, i64 120), align 8, !tbaa !10
  %cmp.not = icmp eq i64 %add9.i, 58
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @abort() #7
  unreachable

if.end:                                           ; preds = %entry
  call void @exit(i32 noundef 0) #7
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 long long", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long long", !8, i64 0}
