; 175967989867416765681194035533163928384
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/175967989867416765681194035533163928384_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/175967989867416765681194035533163928384.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %hicount = alloca i32, align 4
  %c = alloca ptr, align 8
  %str = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %hicount, align 4
  %call = call i32 (...) @compute()
  %conv = sext i32 %call to i64
  %0 = inttoptr i64 %conv to ptr
  store ptr %0, ptr %str, align 8
  %1 = load ptr, ptr %str, align 8
  store ptr %1, ptr %c, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %c, align 8
  %3 = load i8, ptr %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %c, align 8
  %5 = load i8, ptr %4, align 1
  %conv1 = zext i8 %5 to i32
  %cmp = icmp ult i32 %conv1, 128
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %6 = load i32, ptr %hicount, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %hicount, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %hicount, align 4
  %cmp4 = icmp ne i32 %7, 1
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.end
  call void @abort() #3
  unreachable

if.end7:                                          ; preds = %for.end
  ret i32 0
}

declare i32 @compute(...) #1

declare i32 @printf(ptr noundef, ...) #1

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
