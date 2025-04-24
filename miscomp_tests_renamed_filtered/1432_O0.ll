; 12572121952774056625769777587037777397
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/12572121952774056625769777587037777397.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/12572121952774056625769777587037777397.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"Done\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %a, ptr noundef %b, i32 noundef %c, ptr noundef %d) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  %d.addr = alloca ptr, align 8
  store i32 %a, ptr %a.addr, align 4
  store ptr %b, ptr %b.addr, align 8
  store i32 %c, ptr %c.addr, align 4
  store ptr %d, ptr %d.addr, align 8
  %0 = load i32, ptr %a.addr, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %a.addr, align 4
  %1 = zext i32 %0 to i64
  %2 = load i32, ptr %c.addr, align 4
  %inc1 = add nsw i32 %2, 1
  store i32 %inc1, ptr %c.addr, align 4
  %3 = zext i32 %2 to i64
  %4 = load i32, ptr %a.addr, align 4
  %cmp = icmp ne i32 %4, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, ptr %c.addr, align 4
  %cmp2 = icmp ne i32 %5, 2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %e = alloca [10 x i32], align 16
  store i32 0, ptr %retval, align 4
  %arraydecay = getelementptr inbounds [10 x i32], ptr %e, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [10 x i32], ptr %e, i64 0, i64 0
  call void @foo(i32 noundef 1, ptr noundef %arraydecay, i32 noundef 1, ptr noundef %arraydecay1)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
