; 175644608576922926306870094572695908812
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/175644608576922926306870094572695908812.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/175644608576922926306870094572695908812.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nounwind uwtable
define dso_local void @test(x86_fp80 noundef %val, ptr noundef writeonly captures(none) %eval) local_unnamed_addr #0 {
entry:
  %cmp = fcmp olt x86_fp80 %val, 0xK00000000000000000000
  %fneg = fneg x86_fp80 %val
  %val.addr.0 = select i1 %cmp, x86_fp80 %fneg, x86_fp80 %val
  %cmp1 = fcmp ult x86_fp80 %val.addr.0, 0xK4002A000000000000000
  br i1 %cmp1, label %if.else, label %while.cond

while.cond:                                       ; preds = %entry, %while.body
  %tmp.0 = phi x86_fp80 [ %mul, %while.body ], [ 0xK4002A000000000000000, %entry ]
  %i.0 = phi i32 [ %inc, %while.body ], [ 0, %entry ]
  %cmp3 = fcmp olt x86_fp80 %tmp.0, %val.addr.0
  br i1 %cmp3, label %while.body, label %if.end18

while.body:                                       ; preds = %while.cond
  %mul = fmul x86_fp80 %tmp.0, 0xK40008000000000000000
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond = icmp eq i32 %inc, 11
  br i1 %exitcond, label %if.then5, label %while.cond, !llvm.loop !5

if.then5:                                         ; preds = %while.body
  tail call void @abort() #5
  unreachable

if.else:                                          ; preds = %entry
  %cmp7 = fcmp une x86_fp80 %val, 0xK00000000000000000000
  br i1 %cmp7, label %while.cond9, label %if.end18

while.cond9:                                      ; preds = %if.else, %while.body11
  %tmp.1 = phi x86_fp80 [ %div, %while.body11 ], [ 0xK4002A000000000000000, %if.else ]
  %i.1 = phi i32 [ %inc12, %while.body11 ], [ 0, %if.else ]
  %cmp10 = fcmp olt x86_fp80 %val.addr.0, %tmp.1
  br i1 %cmp10, label %while.body11, label %if.end18

while.body11:                                     ; preds = %while.cond9
  %div = fmul x86_fp80 %tmp.1, 0xK3FFE8000000000000000
  %inc12 = add nuw nsw i32 %i.1, 1
  %exitcond36 = icmp eq i32 %inc12, 11
  br i1 %exitcond36, label %if.then14, label %while.cond9, !llvm.loop !8

if.then14:                                        ; preds = %while.body11
  tail call void @abort() #5
  unreachable

if.end18:                                         ; preds = %while.cond, %while.cond9, %if.else
  %i.2 = phi i32 [ 0, %if.else ], [ %i.1, %while.cond9 ], [ %i.0, %while.cond ]
  store i32 %i.2, ptr %eval, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %eval = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eval) #6
  call void @test(x86_fp80 noundef 0xK4000C000000000000000, ptr noundef nonnull %eval)
  call void @test(x86_fp80 noundef 0xK4000E000000000000000, ptr noundef nonnull %eval)
  call void @test(x86_fp80 noundef 0xK40018000000000000000, ptr noundef nonnull %eval)
  call void @test(x86_fp80 noundef 0xK4001A000000000000000, ptr noundef nonnull %eval)
  tail call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

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
