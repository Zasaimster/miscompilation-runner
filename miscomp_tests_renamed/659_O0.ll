; 127355824623664649802471652326399731996
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/127355824623664649802471652326399731996.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/127355824623664649802471652326399731996.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.doubleword = type { [2 x i64] }
%union.doubleword.0 = type { [2 x i64] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_endianness() #0 {
entry:
  %dw = alloca %union.doubleword, align 8
  store double 1.000000e+01, ptr %dw, align 8
  %arrayidx = getelementptr inbounds [2 x i64], ptr %dw, i64 0, i64 0
  %0 = load i64, ptr %arrayidx, align 8
  %cmp = icmp ne i64 %0, 0
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_endianness_vol() #0 {
entry:
  %dw = alloca %union.doubleword.0, align 8
  store volatile double 1.000000e+01, ptr %dw, align 8
  %arrayidx = getelementptr inbounds [2 x i64], ptr %dw, i64 0, i64 0
  %0 = load volatile i64, ptr %arrayidx, align 8
  %cmp = icmp ne i64 %0, 0
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @test_endianness()
  %call1 = call i32 @test_endianness_vol()
  %cmp = icmp ne i32 %call, %call1
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
