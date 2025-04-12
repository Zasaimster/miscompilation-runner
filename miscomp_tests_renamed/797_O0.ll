; 199422929183321749141695568923339615484
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/199422929183321749141695568923339615484.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/199422929183321749141695568923339615484.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 1, align 4
@b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i8 noundef signext %p) #0 {
entry:
  %p.addr = alloca i8, align 1
  %t = alloca i32, align 4
  %s = alloca ptr, align 8
  store i8 %p, ptr %p.addr, align 1
  store i32 0, ptr %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr @b, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store ptr @a, ptr %s, align 8
  %1 = load i32, ptr %t, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %t, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load i8, ptr %p.addr, align 1
  %conv = sext i8 %2 to i32
  %3 = load ptr, ptr %s, align 8
  %4 = load i32, ptr %3, align 4
  %and = and i32 %4, %conv
  store i32 %and, ptr %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %5 = load ptr, ptr %s, align 8
  %6 = load i32, ptr %5, align 4
  %and1 = and i32 %6, 1
  store i32 %and1, ptr %5, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr @b, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr @b, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @foo(i8 noundef signext 0)
  %0 = load i32, ptr @a, align 4
  %cmp = icmp ne i32 %0, 0
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
