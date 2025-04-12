; 167212634912696224781103307836368808389
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/167212634912696224781103307836368808389.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/167212634912696224781103307836368808389.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #4
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %while.cond.i

for.cond:                                         ; preds = %if.end9
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %while.cond.i.backedge, label %for.end

while.cond.i:                                     ; preds = %while.cond.i.backedge, %entry
  %z.0.i = phi i32 [ 1, %entry ], [ %z.0.i.be, %while.cond.i.backedge ]
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %i)
  %cmp.i = icmp sgt i32 %call.i, %z.0.i
  %mul.i = shl nsw i32 %z.0.i, 1
  br i1 %cmp.i, label %while.cond.i.backedge, label %foo.exit

while.cond.i.backedge:                            ; preds = %while.cond.i, %for.cond
  %z.0.i.be = phi i32 [ %mul.i, %while.cond.i ], [ %inc, %for.cond ]
  br label %while.cond.i, !llvm.loop !9

foo.exit:                                         ; preds = %while.cond.i
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp1 = icmp sgt i32 %0, 6
  br i1 %cmp1, label %if.end9, label %if.else

if.else:                                          ; preds = %foo.exit
  %cmp2 = icmp sgt i32 %0, 3
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %sub = shl nuw i32 %0, 1
  br label %if.end9

if.else4:                                         ; preds = %if.else
  %cmp5 = icmp eq i32 %0, 3
  %. = select i1 %cmp5, i32 12, i32 8
  br label %if.end9

if.end9:                                          ; preds = %if.else4, %foo.exit, %if.then3
  %k.0 = phi i32 [ %sub, %if.then3 ], [ %0, %foo.exit ], [ %., %if.else4 ]
  %cmp10.not = icmp eq i32 %z.0.i, %k.0
  br i1 %cmp10.not, label %for.cond, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @abort() #5
  unreachable

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
