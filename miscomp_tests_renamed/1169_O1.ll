; 148858386919752292450233025634071449214
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/148858386919752292450233025634071449214.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/148858386919752292450233025634071449214.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ptr = dso_local local_unnamed_addr global ptr null, align 8
@arrindex = dso_local local_unnamed_addr global i32 4, align 4
@getptrcnt = dso_local local_unnamed_addr global i32 0, align 4
@getintcnt = dso_local local_unnamed_addr global i32 0, align 4
@arr = dso_local local_unnamed_addr global [1 x i32] zeroinitializer, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @assign_arg_ptr(ptr noundef readonly captures(none) %p) local_unnamed_addr #0 {
entry:
  tail call void @llvm.prefetch.p0(ptr %p, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local noundef range(i32 0, 2) i32 @assign_glob_ptr() local_unnamed_addr #2 {
entry:
  %0 = load ptr, ptr @ptr, align 8, !tbaa !5
  tail call void @llvm.prefetch.p0(ptr %0, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @assign_arg_idx(ptr noundef readonly captures(none) %p, i32 noundef %i) local_unnamed_addr #0 {
entry:
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds i32, ptr %p, i64 %idxprom
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local noundef range(i32 0, 2) i32 @assign_glob_idx() local_unnamed_addr #2 {
entry:
  %0 = load ptr, ptr @ptr, align 8, !tbaa !5
  %1 = load i32, ptr @arrindex, align 4, !tbaa !10
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @preinc_arg_ptr(ptr noundef readonly captures(none) %p) local_unnamed_addr #0 {
entry:
  %add.ptr = getelementptr inbounds nuw i8, ptr %p, i64 4
  tail call void @llvm.prefetch.p0(ptr nonnull %add.ptr, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local noundef range(i32 0, 2) i32 @preinc_glob_ptr() local_unnamed_addr #2 {
entry:
  %0 = load ptr, ptr @ptr, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %add.ptr, ptr @ptr, align 8, !tbaa !5
  tail call void @llvm.prefetch.p0(ptr nonnull %add.ptr, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @postinc_arg_ptr(ptr noundef readonly captures(none) %p) local_unnamed_addr #0 {
entry:
  tail call void @llvm.prefetch.p0(ptr %p, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local noundef range(i32 0, 2) i32 @postinc_glob_ptr() local_unnamed_addr #2 {
entry:
  %0 = load ptr, ptr @ptr, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %add.ptr, ptr @ptr, align 8, !tbaa !5
  tail call void @llvm.prefetch.p0(ptr %0, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @predec_arg_ptr(ptr noundef readonly captures(none) %p) local_unnamed_addr #0 {
entry:
  %add.ptr = getelementptr inbounds i8, ptr %p, i64 -4
  tail call void @llvm.prefetch.p0(ptr nonnull %add.ptr, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local noundef range(i32 0, 2) i32 @predec_glob_ptr() local_unnamed_addr #2 {
entry:
  %0 = load ptr, ptr @ptr, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 -4
  store ptr %add.ptr, ptr @ptr, align 8, !tbaa !5
  tail call void @llvm.prefetch.p0(ptr nonnull %add.ptr, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @postdec_arg_ptr(ptr noundef readonly captures(none) %p) local_unnamed_addr #0 {
entry:
  tail call void @llvm.prefetch.p0(ptr %p, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local noundef range(i32 0, 2) i32 @postdec_glob_ptr() local_unnamed_addr #2 {
entry:
  %0 = load ptr, ptr @ptr, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 -4
  store ptr %add.ptr, ptr @ptr, align 8, !tbaa !5
  tail call void @llvm.prefetch.p0(ptr %0, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @preinc_arg_idx(ptr noundef readonly captures(none) %p, i32 noundef %i) local_unnamed_addr #0 {
entry:
  %0 = sext i32 %i to i64
  %1 = getelementptr i32, ptr %p, i64 %0
  %arrayidx = getelementptr i8, ptr %1, i64 4
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local noundef range(i32 0, 2) i32 @preinc_glob_idx() local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr @arrindex, align 4, !tbaa !10
  %add = add nsw i32 %0, 1
  %1 = load ptr, ptr @ptr, align 8, !tbaa !5
  store i32 %add, ptr @arrindex, align 4, !tbaa !10
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @postinc_arg_idx(ptr noundef readonly captures(none) %p, i32 noundef %i) local_unnamed_addr #0 {
entry:
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds i32, ptr %p, i64 %idxprom
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local noundef range(i32 0, 2) i32 @postinc_glob_idx() local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr @arrindex, align 4, !tbaa !10
  %add = add nsw i32 %0, 1
  %1 = load ptr, ptr @ptr, align 8, !tbaa !5
  store i32 %add, ptr @arrindex, align 4, !tbaa !10
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef range(i32 0, 2) i32 @predec_arg_idx(ptr noundef readonly captures(none) %p, i32 noundef %i) local_unnamed_addr #0 {
entry:
  %0 = sext i32 %i to i64
  %1 = getelementptr i32, ptr %p, i64 %0
  %arrayidx = getelementptr i8, ptr %1, i64 -4
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local noundef range(i32 0, 2) i32 @predec_glob_idx() local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr @arrindex, align 4, !tbaa !10
  %1 = load ptr, ptr @ptr, align 8, !tbaa !5
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr @arrindex, align 4, !tbaa !10
  %idxprom = sext i32 %dec to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef range(i32 0, 2) i32 @postdec_arg_idx(ptr noundef readonly captures(none) %p, i32 noundef %i) local_unnamed_addr #0 {
entry:
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds i32, ptr %p, i64 %idxprom
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local noundef range(i32 0, 2) i32 @postdec_glob_idx() local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr @arrindex, align 4, !tbaa !10
  %1 = load ptr, ptr @ptr, align 8, !tbaa !5
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr @arrindex, align 4, !tbaa !10
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local nonnull ptr @getptr(ptr noundef readnone captures(ret: address, provenance) %p) local_unnamed_addr #3 {
entry:
  %0 = load i32, ptr @getptrcnt, align 4, !tbaa !10
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @getptrcnt, align 4, !tbaa !10
  %add.ptr = getelementptr inbounds nuw i8, ptr %p, i64 4
  ret ptr %add.ptr
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local range(i32 0, 2) i32 @funccall_arg_ptr(ptr noundef readonly captures(none) %p) local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr @getptrcnt, align 4, !tbaa !10
  %inc.i = add nsw i32 %0, 1
  store i32 %inc.i, ptr @getptrcnt, align 4, !tbaa !10
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %p, i64 4
  tail call void @llvm.prefetch.p0(ptr nonnull %add.ptr.i, i32 0, i32 0, i32 1)
  %cmp = icmp eq i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @getint(i32 noundef %i) local_unnamed_addr #3 {
entry:
  %0 = load i32, ptr @getintcnt, align 4, !tbaa !10
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @getintcnt, align 4, !tbaa !10
  %add = add nsw i32 %i, 1
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local range(i32 0, 2) i32 @funccall_arg_idx(ptr noundef readonly captures(none) %p, i32 noundef %i) local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr @getintcnt, align 4, !tbaa !10
  %inc.i = add nsw i32 %0, 1
  store i32 %inc.i, ptr @getintcnt, align 4, !tbaa !10
  %1 = sext i32 %i to i64
  %2 = getelementptr i32, ptr %p, i64 %1
  %arrayidx = getelementptr i8, ptr %2, i64 4
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  %cmp = icmp eq i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
entry:
  %0 = load ptr, ptr @ptr, align 8, !tbaa !5
  tail call void @llvm.prefetch.p0(ptr readonly %0, i32 0, i32 0, i32 1)
  tail call void @llvm.prefetch.p0(ptr %0, i32 0, i32 0, i32 1)
  %arrayidx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %arrayidx.i, i32 0, i32 0, i32 1)
  %1 = load i32, ptr @arrindex, align 4, !tbaa !10
  %idxprom.i = sext i32 %1 to i64
  %arrayidx.i85 = getelementptr inbounds i32, ptr %0, i64 %idxprom.i
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i85, i32 0, i32 0, i32 1)
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %add.ptr.i, i32 0, i32 0, i32 1)
  store ptr %add.ptr.i, ptr @ptr, align 8, !tbaa !5
  tail call void @llvm.prefetch.p0(ptr nonnull %add.ptr.i, i32 0, i32 0, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %add.ptr.i, i32 0, i32 0, i32 1)
  %add.ptr.i87 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %add.ptr.i87, ptr @ptr, align 8, !tbaa !5
  tail call void @llvm.prefetch.p0(ptr nonnull %add.ptr.i, i32 0, i32 0, i32 1)
  %add.ptr.i88 = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %add.ptr.i88, i32 0, i32 0, i32 1)
  store ptr %add.ptr.i88, ptr @ptr, align 8, !tbaa !5
  tail call void @llvm.prefetch.p0(ptr nonnull %add.ptr.i88, i32 0, i32 0, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %add.ptr.i88, i32 0, i32 0, i32 1)
  store ptr %0, ptr @ptr, align 8, !tbaa !5
  tail call void @llvm.prefetch.p0(ptr nonnull %add.ptr.i88, i32 0, i32 0, i32 1)
  %2 = getelementptr i8, ptr %0, i64 12
  %arrayidx.i91 = getelementptr i8, ptr %0, i64 16
  tail call void @llvm.prefetch.p0(ptr readonly %arrayidx.i91, i32 0, i32 0, i32 1)
  %add.i = add nsw i32 %1, 1
  store i32 %add.i, ptr @arrindex, align 4, !tbaa !10
  %idxprom.i92 = sext i32 %add.i to i64
  %arrayidx.i93 = getelementptr inbounds i32, ptr %0, i64 %idxprom.i92
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i93, i32 0, i32 0, i32 1)
  tail call void @llvm.prefetch.p0(ptr readonly %2, i32 0, i32 0, i32 1)
  %add.i95 = add nsw i32 %1, 2
  store i32 %add.i95, ptr @arrindex, align 4, !tbaa !10
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i93, i32 0, i32 0, i32 1)
  %arrayidx.i98 = getelementptr i8, ptr %0, i64 8
  tail call void @llvm.prefetch.p0(ptr readonly %arrayidx.i98, i32 0, i32 0, i32 1)
  store i32 %add.i, ptr @arrindex, align 4, !tbaa !10
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i93, i32 0, i32 0, i32 1)
  tail call void @llvm.prefetch.p0(ptr readonly %2, i32 0, i32 0, i32 1)
  store i32 %1, ptr @arrindex, align 4, !tbaa !10
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i93, i32 0, i32 0, i32 1)
  %3 = load i32, ptr @getptrcnt, align 4, !tbaa !10
  %inc.i.i = add nsw i32 %3, 1
  store i32 %inc.i.i, ptr @getptrcnt, align 4, !tbaa !10
  %add.ptr.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %add.ptr.i.i, i32 0, i32 0, i32 1)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %if.end80, label %if.then79

if.then79:                                        ; preds = %entry
  tail call void @abort() #7
  unreachable

if.end80:                                         ; preds = %entry
  %4 = load i32, ptr @getintcnt, align 4, !tbaa !10
  %inc.i.i105 = add nsw i32 %4, 1
  store i32 %inc.i.i105, ptr @getintcnt, align 4, !tbaa !10
  tail call void @llvm.prefetch.p0(ptr readonly %arrayidx.i91, i32 0, i32 0, i32 1)
  %cmp.i107.not = icmp eq i32 %4, 0
  br i1 %cmp.i107.not, label %if.end84, label %if.then83

if.then83:                                        ; preds = %if.end80
  tail call void @abort() #7
  unreachable

if.end84:                                         ; preds = %if.end80
  tail call void @exit(i32 noundef 0) #7
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 int", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
