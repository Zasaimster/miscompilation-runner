; 137088628274560799371171024502731251382
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/137088628274560799371171024502731251382_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/137088628274560799371171024502731251382.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yf = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @pl(i32 noundef %q5, i32 noundef %nd) #0 {
entry:
  %q5.addr = alloca i32, align 4
  %nd.addr = alloca i32, align 4
  %hp = alloca i32, align 4
  %zx = alloca i32, align 4
  store i32 %q5, ptr %q5.addr, align 4
  store i32 %nd, ptr %nd.addr, align 4
  %0 = load i32, ptr %q5.addr, align 4
  store i32 %0, ptr %hp, align 4
  %1 = load i32, ptr %q5.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %hp, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %hp, align 4
  %4 = load i32, ptr %q5.addr, align 4
  %div = udiv i32 %3, %4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %div, %cond.false ]
  store i32 %cond, ptr %zx, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load i32, ptr @yf, align 4
  %tobool = icmp ne i32 %0, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  call void @pl(i32 noundef 1, i32 noundef %lnot.ext)
  %1 = load i32, ptr @yf, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

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
