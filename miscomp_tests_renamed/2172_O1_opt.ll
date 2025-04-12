; 176987141583046419845837325307597317124
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/176987141583046419845837325307597317124_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/176987141583046419845837325307597317124.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_elt = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8 }

@table = internal unnamed_addr global [32 x ptr] zeroinitializer, align 16
@.str = private unnamed_addr constant [10 x i8] c"a is: %d\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @invalidate_memory(ptr noundef readonly captures(none) %writes) local_unnamed_addr #0 {
entry:
  %bf.load = load i8, ptr %writes, align 4
  %bf.shl.mask = and i8 %bf.load, 8
  %tobool8.not = icmp eq i8 %bf.shl.mask, 0
  %bf.shl2.mask = and i8 %bf.load, 4
  %tobool9.not = icmp eq i8 %bf.shl2.mask, 0
  br label %for.body

for.body:                                         ; preds = %for.inc15, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc15 ]
  %arrayidx = getelementptr inbounds nuw [32 x ptr], ptr @table, i64 0, i64 %indvars.iv
  %0 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %tobool.not29 = icmp eq ptr %0, null
  br i1 %tobool.not29, label %for.inc15, label %for.body6

for.body6:                                        ; preds = %for.inc, %for.body
  %p.030 = phi ptr [ %1, %for.inc ], [ %0, %for.body ]
  %next_same_hash = getelementptr inbounds nuw i8, ptr %p.030, i64 8
  %1 = load ptr, ptr %next_same_hash, align 8, !tbaa !10
  %in_memory = getelementptr inbounds nuw i8, ptr %p.030, i64 64
  %2 = load i8, ptr %in_memory, align 8, !tbaa !13
  %tobool7.not = icmp eq i8 %2, 0
  br i1 %tobool7.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body6
  br i1 %tobool8.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  br i1 %tobool9.not, label %for.inc, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %lor.lhs.false
  %in_struct = getelementptr inbounds nuw i8, ptr %p.030, i64 65
  %3 = load i8, ptr %in_struct, align 1, !tbaa !14
  %tobool12.not = icmp eq i8 %3, 0
  br i1 %tobool12.not, label %for.inc, label %if.then

if.then:                                          ; preds = %land.lhs.true10, %land.lhs.true
  tail call void @abort() #7
  unreachable

for.inc:                                          ; preds = %land.lhs.true10, %lor.lhs.false, %for.body6
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.inc15, label %for.body6, !llvm.loop !15

for.inc15:                                        ; preds = %for.inc, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 31
  br i1 %exitcond.not, label %for.end16, label %for.body, !llvm.loop !18

for.end16:                                        ; preds = %for.inc15
  %call17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 31)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @cse_rtx_addr_varies_p(ptr noundef readnone captures(none) %x) local_unnamed_addr #2 {
entry:
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local void @remove_from_table(ptr noundef readnone captures(none) %x, i32 noundef %y) local_unnamed_addr #3 {
entry:
  tail call void @abort() #7
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %elt = alloca %struct.table_elt, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %elt) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %elt, i8 0, i64 72, i1 false)
  %in_memory = getelementptr inbounds nuw i8, ptr %elt, i64 64
  store i8 1, ptr %in_memory, align 8, !tbaa !13
  store ptr %elt, ptr @table, align 16, !tbaa !5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc15.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %for.inc15.i ]
  %arrayidx.i = getelementptr inbounds nuw [32 x ptr], ptr @table, i64 0, i64 %indvars.iv.i
  %0 = load ptr, ptr %arrayidx.i, align 8, !tbaa !5
  %tobool.not29.i = icmp eq ptr %0, null
  br i1 %tobool.not29.i, label %for.inc15.i, label %for.body6.i

for.body6.i:                                      ; preds = %for.inc.i, %for.body.i
  %p.030.i = phi ptr [ %1, %for.inc.i ], [ %0, %for.body.i ]
  %next_same_hash.i = getelementptr inbounds nuw i8, ptr %p.030.i, i64 8
  %1 = load ptr, ptr %next_same_hash.i, align 8, !tbaa !10
  %in_memory.i = getelementptr inbounds nuw i8, ptr %p.030.i, i64 64
  %2 = load i8, ptr %in_memory.i, align 8, !tbaa !13
  %tobool7.not.i = icmp eq i8 %2, 0
  br i1 %tobool7.not.i, label %for.inc.i, label %land.lhs.true10.i

land.lhs.true10.i:                                ; preds = %for.body6.i
  %in_struct.i = getelementptr inbounds nuw i8, ptr %p.030.i, i64 65
  %3 = load i8, ptr %in_struct.i, align 1, !tbaa !14
  %tobool12.not.i = icmp eq i8 %3, 0
  br i1 %tobool12.not.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true10.i
  call void @abort() #7
  unreachable

for.inc.i:                                        ; preds = %land.lhs.true10.i, %for.body6.i
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %for.inc15.i, label %for.body6.i, !llvm.loop !15

for.inc15.i:                                      ; preds = %for.inc.i, %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 31
  br i1 %exitcond.not.i, label %invalidate_memory.exit, label %for.body.i, !llvm.loop !18

invalidate_memory.exit:                           ; preds = %for.inc15.i
  %call17.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 31)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %elt) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 _ZTS9table_elt", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !6, i64 8}
!11 = !{!"table_elt", !7, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !12, i64 56, !12, i64 60, !8, i64 64, !8, i64 65, !8, i64 66, !8, i64 67}
!12 = !{!"int", !8, i64 0}
!13 = !{!11, !8, i64 64}
!14 = !{!11, !8, i64 65}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !16, !17}
