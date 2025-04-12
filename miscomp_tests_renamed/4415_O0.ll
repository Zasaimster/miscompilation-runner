; 192985358570490100228662820644427505882
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/192985358570490100228662820644427505882.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/192985358570490100228662820644427505882.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"Square calculation complete.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gfbyte() #0 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (i32, ...) @calculateSquare(i32 noundef 4)
  store i32 %call, ptr %i, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %add = add nsw i32 %call1, 1
  store i32 %add, ptr %i, align 4
  %0 = load i32, ptr %i, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %k, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %i, align 4
  %add2 = add nsw i32 %1, 0
  store i32 %add2, ptr %k, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, ptr %i, align 4
  %cmp3 = icmp ne i32 %2, 1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @abort() #4
  unreachable

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %k, align 4
  %3 = load i32, ptr %k, align 4
  %4 = load i32, ptr %i, align 4
  %cmp6 = icmp sle i32 %3, %4
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end5
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then7
  %call8 = call i32 @gfbyte()
  store i32 %call8, ptr %j, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %5 = load i32, ptr %k, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %k, align 4
  %6 = load i32, ptr %i, align 4
  %cmp9 = icmp slt i32 %5, %6
  br i1 %cmp9, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.end5
  call void @exit(i32 noundef 0) #5
  unreachable
}

declare i32 @calculateSquare(...) #1

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { noreturn }

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
