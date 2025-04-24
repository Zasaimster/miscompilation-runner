; 183637645794905559726881639053003357157
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/183637645794905559726881639053003357157.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/183637645794905559726881639053003357157.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @test(x86_fp80 noundef %val, ptr noundef writeonly captures(none) %eval) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (i32, ...) @process(i32 noundef 100) #7
  %conv = sitofp i32 %call to x86_fp80
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp = icmp slt i32 %call1, 0
  %fneg = fneg x86_fp80 %val
  %spec.select = select i1 %cmp, x86_fp80 %fneg, x86_fp80 %val
  %cmp4 = fcmp ult x86_fp80 %spec.select, %conv
  br i1 %cmp4, label %if.else, label %while.cond

while.cond:                                       ; preds = %entry, %while.body
  %tmp.0 = phi x86_fp80 [ %mul, %while.body ], [ %conv, %entry ]
  %i.0 = phi i32 [ %inc, %while.body ], [ 0, %entry ]
  %cmp7 = fcmp olt x86_fp80 %tmp.0, %spec.select
  br i1 %cmp7, label %while.body, label %if.end27

while.body:                                       ; preds = %while.cond
  %mul = fmul x86_fp80 %tmp.0, 0xK40008000000000000000
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond = icmp eq i32 %inc, 11
  br i1 %exitcond, label %if.then11, label %while.cond, !llvm.loop !5

if.then11:                                        ; preds = %while.body
  tail call void @abort() #8
  unreachable

if.else:                                          ; preds = %entry
  %cmp13 = fcmp une x86_fp80 %val, 0xK00000000000000000000
  br i1 %cmp13, label %while.cond16, label %if.end27

while.cond16:                                     ; preds = %if.else, %while.body19
  %tmp.1 = phi x86_fp80 [ %div, %while.body19 ], [ %conv, %if.else ]
  %i.1 = phi i32 [ %inc20, %while.body19 ], [ 0, %if.else ]
  %cmp17 = fcmp olt x86_fp80 %spec.select, %tmp.1
  br i1 %cmp17, label %while.body19, label %if.end27

while.body19:                                     ; preds = %while.cond16
  %div = fmul x86_fp80 %tmp.1, 0xK3FFE8000000000000000
  %inc20 = add nuw nsw i32 %i.1, 1
  %exitcond44 = icmp eq i32 %inc20, 11
  br i1 %exitcond44, label %if.then23, label %while.cond16, !llvm.loop !8

if.then23:                                        ; preds = %while.body19
  tail call void @abort() #8
  unreachable

if.end27:                                         ; preds = %while.cond, %while.cond16, %if.else
  %i.2 = phi i32 [ 0, %if.else ], [ %i.1, %while.cond16 ], [ %i.0, %while.cond ]
  store i32 %i.2, ptr %eval, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @process(...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #5 {
entry:
  %eval = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eval) #7
  call void @test(x86_fp80 noundef 0xK4000C000000000000000, ptr noundef nonnull %eval)
  call void @test(x86_fp80 noundef 0xK4000E000000000000000, ptr noundef nonnull %eval)
  call void @test(x86_fp80 noundef 0xK40018000000000000000, ptr noundef nonnull %eval)
  call void @test(x86_fp80 noundef 0xK4001A000000000000000, ptr noundef nonnull %eval)
  tail call void @exit(i32 noundef 0) #8
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !6, !7}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
