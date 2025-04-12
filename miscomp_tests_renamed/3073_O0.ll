; 113715306319779070419504248702426342264
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/113715306319779070419504248702426342264.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/113715306319779070419504248702426342264.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %pa = alloca ptr, align 8
  %pb = alloca ptr, align 8
  %pc = alloca ptr, align 8
  %ppa = alloca ptr, align 8
  %ppb = alloca ptr, align 8
  %ppc = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 10, ptr %a, align 4
  store i32 20, ptr %b, align 4
  store i32 30, ptr %c, align 4
  store ptr %a, ptr %pa, align 8
  store ptr %b, ptr %pb, align 8
  store ptr %c, ptr %pc, align 8
  store ptr %pa, ptr %ppa, align 8
  store ptr %pb, ptr %ppb, align 8
  store ptr %pc, ptr %ppc, align 8
  store i32 0, ptr %x, align 4
  store i32 0, ptr %y, align 4
  store i32 0, ptr %z, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %pa, align 8
  %cmp1 = icmp eq ptr %1, %a
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store ptr %b, ptr %pa, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  store ptr %a, ptr %pa, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end5, %if.end
  %2 = load ptr, ptr %pa, align 8
  %3 = load i32, ptr %2, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %2, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %x, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %x, align 4
  %5 = load ptr, ptr %pa, align 8
  %6 = load i32, ptr %5, align 4
  %cmp2 = icmp slt i32 %6, 3
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %while.body
  br label %while.end

if.else4:                                         ; preds = %while.body
  store ptr %b, ptr %pa, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.else4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then3, %while.cond
  %7 = load i32, ptr %x, align 4
  %inc6 = add nsw i32 %7, 1
  store i32 %inc6, ptr %x, align 4
  store ptr %b, ptr %pa, align 8
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %8 = load i32, ptr %i, align 4
  %inc7 = add nsw i32 %8, 1
  store i32 %inc7, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %pa, align 8
  %10 = load i32, ptr %9, align 4
  %cmp8 = icmp ne i32 %10, -5
  br i1 %cmp8, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %11 = load ptr, ptr %pb, align 8
  %12 = load i32, ptr %11, align 4
  %cmp9 = icmp ne i32 %12, -5
  br i1 %cmp9, label %if.then12, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %13 = load i32, ptr %x, align 4
  %cmp11 = icmp ne i32 %13, 43
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %lor.lhs.false10, %lor.lhs.false, %for.end
  call void @abort() #3
  unreachable

if.end13:                                         ; preds = %lor.lhs.false10
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
