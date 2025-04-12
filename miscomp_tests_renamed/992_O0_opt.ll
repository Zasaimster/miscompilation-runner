; 151423829946348200999228199201380567422
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/151423829946348200999228199201380567422_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/151423829946348200999228199201380567422.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(ptr noundef %a) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = load i32, ptr %j, align 4
  %sub = sub nsw i32 %conv, %2
  store i32 %sub, ptr %j, align 4
  %3 = load ptr, ptr %a.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %5 = load i32, ptr %j, align 4
  %sub3 = sub nsw i32 %conv2, %5
  store i32 %sub3, ptr %i, align 4
  %6 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %x, align 4
  %7 = load i32, ptr %i, align 4
  %sub5 = sub nsw i32 0, %7
  store i32 %sub5, ptr %y, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %x, align 4
  %8 = load i32, ptr %i, align 4
  store i32 %8, ptr %y, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, ptr %x, align 4
  %10 = load i32, ptr %y, align 4
  %add = add nsw i32 %9, %10
  ret i32 %add
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [2 x i8], align 1
  store i32 0, ptr %retval, align 4
  %arrayidx = getelementptr inbounds [2 x i8], ptr %a, i64 0, i64 0
  store i8 8, ptr %arrayidx, align 1
  %arrayidx1 = getelementptr inbounds [2 x i8], ptr %a, i64 0, i64 1
  store i8 9, ptr %arrayidx1, align 1
  %arraydecay = getelementptr inbounds [2 x i8], ptr %a, i64 0, i64 0
  %call = call i32 @f(ptr noundef %arraydecay)
  %cmp = icmp ne i32 %call, 2
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
