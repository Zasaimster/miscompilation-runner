; 135695406976091277535107478890270029149
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/135695406976091277535107478890270029149.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/135695406976091277535107478890270029149.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp = dso_local local_unnamed_addr global ptr null, align 8
@m = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @foo() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @bar(i32 noundef %rop, ptr noundef captures(none) %r) local_unnamed_addr #1 {
entry:
  %shr = lshr i32 %rop, 9
  %and = and i32 %shr, 511
  %and1 = and i32 %rop, 511
  %0 = load ptr, ptr @cp, align 8, !tbaa !5
  %idxprom = zext nneg i32 %and to i64
  %arrayidx = getelementptr inbounds nuw i64, ptr %r, i64 %idxprom
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %r, i64 40
  %tobool.not = icmp eq i32 %and1, 0
  br label %top

top:                                              ; preds = %top, %entry
  store i64 1, ptr %0, align 8, !tbaa !10
  %1 = load i64, ptr %arrayidx, align 8, !tbaa !10
  %2 = load i64, ptr %arrayidx3, align 8, !tbaa !10
  %add = add i64 %2, %1
  store i64 %add, ptr @m, align 8, !tbaa !10
  store i64 2, ptr %0, align 8, !tbaa !10
  br i1 %tobool.not, label %top, label %if.end

if.end:                                           ; preds = %top
  %idxprom4 = zext nneg i32 %and1 to i64
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %r, i64 %idxprom4
  store i64 1, ptr %arrayidx5, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %cr = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cr) #5
  store ptr %cr, ptr @cp, align 8, !tbaa !5
  store i64 1, ptr %cr, align 8, !tbaa !10
  store i64 47, ptr @m, align 8, !tbaa !10
  store i64 2, ptr %cr, align 8, !tbaa !10
  call void @abort() #6
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
