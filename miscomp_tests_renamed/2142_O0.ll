; 176542920429140621201352428436828491620
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/176542920429140621201352428436828491620.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/176542920429140621201352428436828491620.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"This function is never called.\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @foo(ptr noundef %i, i32 noundef 7)
  store i32 %call, ptr %j, align 4
  %1 = load i32, ptr %i, align 4
  %cmp1 = icmp sge i32 %1, 7
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  store i32 %2, ptr %k, align 4
  br label %if.end9

if.else:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %cmp2 = icmp sge i32 %3, 4
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %4 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %4, 4
  %mul = mul nsw i32 %sub, 2
  %add = add nsw i32 8, %mul
  store i32 %add, ptr %k, align 4
  br label %if.end8

if.else4:                                         ; preds = %if.else
  %5 = load i32, ptr %i, align 4
  %cmp5 = icmp eq i32 %5, 3
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else4
  store i32 12, ptr %k, align 4
  br label %if.end

if.else7:                                         ; preds = %if.else4
  store i32 8, ptr %k, align 4
  br label %if.end

if.end:                                           ; preds = %if.else7, %if.then6
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then3
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then
  %6 = load i32, ptr %j, align 4
  %7 = load i32, ptr %k, align 4
  %cmp10 = icmp ne i32 %6, %7
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @abort() #3
  unreachable

if.end12:                                         ; preds = %if.end9
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @foo(ptr noundef %x, i32 noundef %y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca i32, align 4
  %z = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8
  store i32 %y, ptr %y.addr, align 4
  %0 = load ptr, ptr %x.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %z, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %2 = load i32, ptr %z, align 4
  %cmp = icmp sgt i32 %call, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %3 = load i32, ptr %z, align 4
  %mul = mul nsw i32 %3, %call1
  store i32 %mul, ptr %z, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %4 = load i32, ptr %z, align 4
  ret i32 %4
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
!8 = distinct !{!8, !7}
