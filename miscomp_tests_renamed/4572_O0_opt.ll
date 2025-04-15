; 150841496447795635873157489670648684591
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/150841496447795635873157489670648684591_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/150841496447795635873157489670648684591.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@r = dso_local global ptr null, align 8
@pars = dso_local global i64 0, align 8
@b = dso_local global [32 x i64] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @alpha_ep_extbl_i_eq_0() #0 {
entry:
  %rb = alloca i32, align 4
  %ra = alloca i32, align 4
  %rc = alloca i32, align 4
  %temp = alloca i64, align 8
  %0 = load i64, ptr @pars, align 8
  %shr = lshr i64 %0, 27
  %and = and i64 %shr, 31
  %conv = trunc i64 %and to i32
  store i32 %conv, ptr %rb, align 4
  %1 = load i64, ptr @pars, align 8
  %conv1 = trunc i64 %1 to i32
  %shr2 = lshr i32 %conv1, 5
  %conv3 = zext i32 %shr2 to i64
  %and4 = and i64 %conv3, 31
  %conv5 = trunc i64 %and4 to i32
  store i32 %conv5, ptr %ra, align 4
  %2 = load i64, ptr @pars, align 8
  %conv6 = trunc i64 %2 to i32
  %shr7 = lshr i32 %conv6, 0
  %conv8 = zext i32 %shr7 to i64
  %and9 = and i64 %conv8, 31
  %conv10 = trunc i64 %and9 to i32
  store i32 %conv10, ptr %rc, align 4
  %3 = load ptr, ptr @r, align 8
  %4 = load i32, ptr %ra, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds nuw i64, ptr %3, i64 %idxprom
  %5 = load i64, ptr %arrayidx, align 8
  %6 = load ptr, ptr @r, align 8
  %7 = load i32, ptr %rb, align 4
  %idxprom11 = zext i32 %7 to i64
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %6, i64 %idxprom11
  %8 = load i64, ptr %arrayidx12, align 8
  %and13 = and i64 %8, 7
  %shl = shl i64 %and13, 3
  %shr14 = lshr i64 %5, %shl
  %and15 = and i64 %shr14, 255
  store i64 %and15, ptr %temp, align 8
  %9 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %9, 31
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i64, ptr %temp, align 8
  %11 = load ptr, ptr @r, align 8
  %12 = load i32, ptr %rc, align 4
  %idxprom17 = zext i32 %12 to i64
  %arrayidx18 = getelementptr inbounds nuw i64, ptr %11, i64 %idxprom17
  store i64 %10, ptr %arrayidx18, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i64 3160194, ptr getelementptr inbounds ([32 x i64], ptr @b, i64 0, i64 17), align 8
  store i64 6003104017374052362, ptr getelementptr inbounds ([32 x i64], ptr @b, i64 0, i64 2), align 16
  store i64 2281701442, ptr @pars, align 8
  call void @alpha_ep_extbl_i_eq_0()
  %0 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @b, i64 0, i64 2), align 16
  %cmp = icmp ne i64 %0, 77
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
