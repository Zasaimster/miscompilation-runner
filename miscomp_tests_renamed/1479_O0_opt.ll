; 126392195703243940265924574612644791802
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/126392195703243940265924574612644791802_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/126392195703243940265924574612644791802.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@count = internal global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I exist!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %iNbr = alloca i32, align 4
  %test = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %iNbr, align 4
  store i32 0, ptr %test, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %test, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @inc()
  %1 = load i32, ptr %iNbr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  br label %while.end

if.else:                                          ; preds = %while.body
  call void @inc()
  %2 = load i32, ptr %iNbr, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr %iNbr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  store i32 1, ptr %test, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then, %while.cond
  %3 = load i32, ptr @count, align 4
  %cmp2 = icmp ne i32 %3, 2
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %while.end
  call void @abort() #3
  unreachable

if.end4:                                          ; preds = %while.end
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @inc() #0 {
entry:
  %0 = load i32, ptr @count, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @count, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

declare i32 @printf(ptr noundef, ...) #2

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
