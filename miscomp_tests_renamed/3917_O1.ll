; 168457329807163791498391260521334184913
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/168457329807163791498391260521334184913.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/168457329807163791498391260521334184913.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i16, i16, [8 x i8] }

@arr = dso_local global [100 x i8] zeroinitializer, align 16
@ptr = dso_local local_unnamed_addr global ptr @arr, align 8
@idx = dso_local local_unnamed_addr global i32 3, align 4
@s = dso_local global %struct.S zeroinitializer, align 2
@str = private unnamed_addr constant [14 x i8] c"Hello, World!\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @arg_ptr(ptr readnone captures(none) %p) local_unnamed_addr #0 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @arg_idx(ptr noundef readonly captures(none) %p, i32 noundef %i) local_unnamed_addr #1 {
entry:
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds i8, ptr %p, i64 %idxprom
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @glob_ptr() local_unnamed_addr #3 {
entry:
  %0 = load ptr, ptr @ptr, align 8, !tbaa !5
  tail call void @llvm.prefetch.p0(ptr %0, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @glob_idx() local_unnamed_addr #3 {
entry:
  %0 = load ptr, ptr @ptr, align 8, !tbaa !5
  %1 = load i32, ptr @idx, align 4, !tbaa !10
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
entry:
  tail call void @llvm.prefetch.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @s, i64 2), i32 0, i32 0, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @s, i64 5), i32 0, i32 0, i32 1)
  tail call void @arg_ptr(ptr nonnull poison)
  tail call void @arg_ptr(ptr nonnull poison)
  %0 = load ptr, ptr @ptr, align 8, !tbaa !5
  %arrayidx.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %arrayidx.i, i32 0, i32 0, i32 1)
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %arrayidx.i2 = getelementptr inbounds nuw i8, ptr %0, i64 3
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %arrayidx.i2, i32 0, i32 0, i32 1)
  store i32 3, ptr @idx, align 4, !tbaa !10
  tail call void @llvm.prefetch.p0(ptr %0, i32 0, i32 0, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull %arrayidx.i, i32 0, i32 0, i32 1)
  store ptr %add.ptr1, ptr @ptr, align 8, !tbaa !5
  store i32 2, ptr @idx, align 4, !tbaa !10
  tail call void @llvm.prefetch.p0(ptr nonnull %add.ptr1, i32 0, i32 0, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull %arrayidx.i2, i32 0, i32 0, i32 1)
  tail call void @exit(i32 noundef 0) #7
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #6

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 omnipotent char", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
