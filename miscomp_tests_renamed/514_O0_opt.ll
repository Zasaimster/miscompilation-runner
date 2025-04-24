; 10911244983823409550733188904344898673
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/10911244983823409550733188904344898673_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/10911244983823409550733188904344898673.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @fun(i8 noundef zeroext %y) #0 {
entry:
  %y.addr = alloca i8, align 1
  %x = alloca i8, align 1
  store i8 %y, ptr %y.addr, align 1
  %call = call i32 (i32, ...) @process(i32 noundef 100)
  %0 = load i8, ptr %y.addr, align 1
  %conv = zext i8 %0 to i32
  %div = sdiv i32 %call, %conv
  %conv1 = trunc i32 %div to i8
  store i8 %conv1, ptr %x, align 1
  %1 = load i8, ptr %x, align 1
  ret i8 %1
}

declare i32 @process(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call zeroext i8 @fun(i8 noundef zeroext 2)
  %conv = zext i8 %call to i32
  %cmp = icmp ne i32 %conv, 127
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

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
