; 147543212970417959120241372225459766045
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/147543212970417959120241372225459766045.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/147543212970417959120241372225459766045.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tar(i64 noundef %i) #0 {
entry:
  %i.addr = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8
  %0 = load i64, ptr %i.addr, align 8
  %cmp = icmp ne i64 %0, 36863
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %i.addr, align 8
  %conv = trunc i64 %1 to i32
  ret i32 %conv
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bug(i32 noundef %q, i64 noundef %bcount) #0 {
entry:
  %q.addr = alloca i32, align 4
  %bcount.addr = alloca i64, align 8
  %j = alloca i32, align 4
  %outgo = alloca i32, align 4
  store i32 %q, ptr %q.addr, align 4
  store i64 %bcount, ptr %bcount.addr, align 8
  store i32 0, ptr %j, align 4
  store i32 0, ptr %outgo, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %j, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %outgo, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %outgo, align 4
  %2 = load i32, ptr %outgo, align 4
  %3 = load i32, ptr %q.addr, align 4
  %sub = sub nsw i32 %3, 1
  %cmp1 = icmp sgt i32 %2, %sub
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load i32, ptr %q.addr, align 4
  %sub2 = sub nsw i32 %4, 1
  store i32 %sub2, ptr %outgo, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %5 = load i32, ptr %outgo, align 4
  %conv = sext i32 %5 to i64
  %6 = load i64, ptr %bcount.addr, align 8
  %mul = mul nsw i64 %conv, %6
  %call = call i32 @tar(i64 noundef %mul)
  store i32 %call, ptr %j, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @bug(i32 noundef 5, i64 noundef 36863)
  ret i32 0
}

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
