; 101713385088527243215691704290451804080
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/101713385088527243215691704290451804080_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/101713385088527243215691704290451804080.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nounwind uwtable
define dso_local void @test(x86_fp80 noundef %val, ptr noundef writeonly captures(none) %eval) local_unnamed_addr #0 {
entry:
  %cmp = fcmp olt x86_fp80 %val, 0xK00000000000000000000
  %fneg = fneg x86_fp80 %val
  %val.addr.0 = select i1 %cmp, x86_fp80 %fneg, x86_fp80 %val
  %cmp1 = fcmp ult x86_fp80 %val.addr.0, 0xK4003A000000000000000
  br i1 %cmp1, label %if.else, label %while.cond

while.cond:                                       ; preds = %entry
  %cmp3 = fcmp ogt x86_fp80 %val.addr.0, 0xK4003A000000000000000
  br i1 %cmp3, label %if.then5, label %if.end18

if.then5:                                         ; preds = %while.cond
  tail call void @abort() #5
  unreachable

if.else:                                          ; preds = %entry
  %cmp7 = fcmp une x86_fp80 %val, 0xK00000000000000000000
  %cmp10 = fcmp olt x86_fp80 %val.addr.0, 0xK4003A000000000000000
  %or.cond = and i1 %cmp7, %cmp10
  br i1 %or.cond, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.else
  tail call void @abort() #5
  unreachable

if.end18:                                         ; preds = %if.else, %while.cond
  store i32 30, ptr %eval, align 4, !tbaa !5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
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
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
