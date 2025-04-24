; 12401802377415895246954898719780552777
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/12401802377415895246954898719780552777.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/12401802377415895246954898719780552777.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i32 noundef %i, i32 noundef %j, i32 noundef %radius, i32 noundef %width, i32 noundef %N) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %radius.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %diff = alloca i32, align 4
  %lowk = alloca i32, align 4
  %k = alloca i32, align 4
  %idx = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  store i32 %j, ptr %j.addr, align 4
  store i32 %radius, ptr %radius.addr, align 4
  store i32 %width, ptr %width.addr, align 4
  store i32 %N, ptr %N.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = load i32, ptr %radius.addr, align 4
  %sub = sub nsw i32 %call, %0
  store i32 %sub, ptr %diff, align 4
  %1 = load i32, ptr %diff, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %diff, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %lowk, align 4
  %3 = load i32, ptr %lowk, align 4
  store i32 %3, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %4 = load i32, ptr %k, align 4
  %cmp1 = icmp sle i32 %4, 2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %k, align 4
  %6 = load i32, ptr %i.addr, align 4
  %sub2 = sub nsw i32 %5, %6
  %7 = load i32, ptr %radius.addr, align 4
  %add = add nsw i32 %sub2, %7
  %8 = load i32, ptr %width.addr, align 4
  %mul = mul nsw i32 %add, %8
  %9 = load i32, ptr %j.addr, align 4
  %sub3 = sub nsw i32 %mul, %9
  %10 = load i32, ptr %radius.addr, align 4
  %add4 = add nsw i32 %sub3, %10
  store i32 %add4, ptr %idx, align 4
  %11 = load i32, ptr %idx, align 4
  %cmp5 = icmp slt i32 %11, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %k, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %13 = load i32, ptr %lowk, align 4
  store i32 %13, ptr %k, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc9, %for.end
  %14 = load i32, ptr %k, align 4
  %cmp7 = icmp sle i32 %14, 2
  br i1 %cmp7, label %for.body8, label %for.end11

for.body8:                                        ; preds = %for.cond6
  br label %for.inc9

for.inc9:                                         ; preds = %for.body8
  %15 = load i32, ptr %k, align 4
  %inc10 = add nsw i32 %15, 1
  store i32 %inc10, ptr %k, align 4
  br label %for.cond6, !llvm.loop !8

for.end11:                                        ; preds = %for.cond6
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %exc_rad = alloca i32, align 4
  %N = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 2, ptr %exc_rad, align 4
  store i32 8, ptr %N, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %exc_rad, align 4
  %3 = load i32, ptr %exc_rad, align 4
  %mul = mul nsw i32 2, %3
  %add = add nsw i32 %mul, 1
  %4 = load i32, ptr %N, align 4
  call void @f(i32 noundef %1, i32 noundef 1, i32 noundef %2, i32 noundef %add, i32 noundef %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @exit(i32 noundef 0) #5
  unreachable
}

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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
