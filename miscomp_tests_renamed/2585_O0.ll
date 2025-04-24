; 144828206722080641104424846616039234608
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/144828206722080641104424846616039234608.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/144828206722080641104424846616039234608.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @do_exit() #0 {
entry:
  %call = call i32 (...) @anotherDummyFunc()
  ret void
}

declare i32 @anotherDummyFunc(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @do_abort() #0 {
entry:
  call void @abort() #3
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %x, i32 noundef %a) #0 {
entry:
  %x.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %a, ptr %a.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %a.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %doit

if.end:                                           ; preds = %entry
  call void @do_exit()
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %a.addr, align 4
  %cmp1 = icmp ne i32 %2, %3
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %doit

if.end3:                                          ; preds = %if.end
  call void @do_abort()
  br label %return

doit:                                             ; preds = %if.then2, %if.then
  call void @do_abort()
  br label %return

return:                                           ; preds = %doit, %if.end3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @foo(i32 noundef 1, i32 noundef 0)
  ret i32 0
}

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
