; 181440011320559892423847657946306633764
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/181440011320559892423847657946306633764_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/181440011320559892423847657946306633764.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %u = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 -1, ptr %i, align 4
  %0 = load i32, ptr %i, align 4
  %call = call i32 (i32, i32, ...) @MAX(i32 noundef %0, i32 noundef 0)
  %call1 = call i32 (i32, i32, ...) @MAX(i32 noundef %call, i32 noundef 1)
  store i32 %call1, ptr %u, align 4
  %1 = load i32, ptr %u, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %i, align 4
  %call2 = call i32 (i32, i32, ...) @MAX(i32 noundef %2, i32 noundef 0)
  %3 = load i32, ptr %i, align 4
  %call3 = call i32 (i32, i32, ...) @MIN(i32 noundef %call2, i32 noundef %3)
  store i32 %call3, ptr %u, align 4
  %4 = load i32, ptr %u, align 4
  %cmp4 = icmp ne i32 %4, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end6:                                          ; preds = %if.end
  ret i32 0
}

declare i32 @MAX(...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

declare i32 @MIN(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
