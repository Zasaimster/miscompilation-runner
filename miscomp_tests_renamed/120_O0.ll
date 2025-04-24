; 102032547119975818243097261683560873598
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/102032547119975818243097261683560873598.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/102032547119975818243097261683560873598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %p, i32 noundef %a) #0 {
entry:
  %p.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %q = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 %p, ptr %p.addr, align 4
  store i32 %a, ptr %a.addr, align 4
  %0 = load i32, ptr %p.addr, align 4
  %add = add i32 %0, 7
  store i32 %add, ptr %q, align 4
  %1 = load i32, ptr %a.addr, align 4
  %sub = sub i32 %1, -2147483648
  %cmp = icmp uge i32 %sub, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %p.addr, align 4
  store i32 %2, ptr %c, align 4
  %3 = load i32, ptr %p.addr, align 4
  %4 = load i32, ptr %a.addr, align 4
  %add1 = add i32 %3, %4
  store i32 %add1, ptr %d, align 4
  %5 = load i32, ptr %c, align 4
  %6 = load i32, ptr %d, align 4
  %sub2 = sub nsw i32 %5, %6
  %cmp3 = icmp ne i32 %sub2, -2147483648
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @abort() #2
  unreachable

if.end5:                                          ; preds = %if.end
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void (i32, i32, i32, ...) @foo(i32 noundef -1, i32 noundef -2147483648, i32 noundef 1)
  call void @bar(i32 noundef -1, i32 noundef -2147483648)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
