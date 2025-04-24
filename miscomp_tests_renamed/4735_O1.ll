; 183572998736226603925266663735384472169
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/183572998736226603925266663735384472169.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/183572998736226603925266663735384472169.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_elt = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8 }

@table = internal unnamed_addr global [32 x ptr] zeroinitializer, align 16

; Function Attrs: nofree nounwind uwtable
define dso_local void @invalidate_memory(ptr noundef readnone captures(none) %writes) local_unnamed_addr #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc11
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc11 ]
  %arrayidx = getelementptr inbounds nuw [32 x ptr], ptr @table, i64 0, i64 %indvars.iv
  br label %for.cond1

for.cond1:                                        ; preds = %for.body2, %for.body
  %p.0.in = phi ptr [ %arrayidx, %for.body ], [ %next_same_hash, %for.body2 ]
  %p.0 = load ptr, ptr %p.0.in, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %p.0, null
  br i1 %tobool.not, label %for.inc11, label %for.body2

for.body2:                                        ; preds = %for.cond1
  %next_same_hash = getelementptr inbounds nuw i8, ptr %p.0, i64 8
  %in_memory = getelementptr inbounds nuw i8, ptr %p.0, i64 64
  %0 = load i8, ptr %in_memory, align 8, !tbaa !10
  %tobool3.not = icmp eq i8 %0, 0
  br i1 %tobool3.not, label %for.cond1, label %if.then, !llvm.loop !13

if.then:                                          ; preds = %for.body2
  tail call void @abort() #6
  unreachable

for.inc11:                                        ; preds = %for.cond1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 31
  br i1 %exitcond.not, label %for.end12, label %for.body, !llvm.loop !16

for.end12:                                        ; preds = %for.inc11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @cse_rtx_addr_varies_p(ptr noundef readnone captures(none) %x) local_unnamed_addr #2 {
entry:
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local void @remove_from_table(ptr noundef readnone captures(none) %x, i32 noundef %y) local_unnamed_addr #3 {
entry:
  tail call void @abort() #6
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %elt = alloca %struct.table_elt, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %elt) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %elt, i8 0, i64 72, i1 false)
  %in_memory = getelementptr inbounds nuw i8, ptr %elt, i64 64
  store i8 1, ptr %in_memory, align 8, !tbaa !10
  store ptr %elt, ptr @table, align 16, !tbaa !5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc11.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %for.inc11.i ]
  %arrayidx.i = getelementptr inbounds nuw [32 x ptr], ptr @table, i64 0, i64 %indvars.iv.i
  br label %for.cond1.i

for.cond1.i:                                      ; preds = %for.body2.i, %for.body.i
  %p.0.in.i = phi ptr [ %arrayidx.i, %for.body.i ], [ %next_same_hash.i, %for.body2.i ]
  %p.0.i = load ptr, ptr %p.0.in.i, align 8, !tbaa !5
  %tobool.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool.not.i, label %for.inc11.i, label %for.body2.i

for.body2.i:                                      ; preds = %for.cond1.i
  %next_same_hash.i = getelementptr inbounds nuw i8, ptr %p.0.i, i64 8
  %in_memory.i = getelementptr inbounds nuw i8, ptr %p.0.i, i64 64
  %0 = load i8, ptr %in_memory.i, align 8, !tbaa !10
  %tobool3.not.i = icmp eq i8 %0, 0
  br i1 %tobool3.not.i, label %for.cond1.i, label %if.then.i, !llvm.loop !13

if.then.i:                                        ; preds = %for.body2.i
  call void @abort() #6
  unreachable

for.inc11.i:                                      ; preds = %for.cond1.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 31
  br i1 %exitcond.not.i, label %invalidate_memory.exit, label %for.body.i, !llvm.loop !16

invalidate_memory.exit:                           ; preds = %for.inc11.i
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %elt) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

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
!10 = !{!11, !8, i64 64}
!11 = !{!"table_elt", !7, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !12, i64 56, !12, i64 60, !8, i64 64, !8, i64 65, !8, i64 66, !8, i64 67}
!12 = !{!"int", !8, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !14, !15}
