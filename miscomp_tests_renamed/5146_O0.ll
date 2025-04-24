; 190877023004773838322946272159334998181
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/190877023004773838322946272159334998181.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/190877023004773838322946272159334998181.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [80 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %b) #0 {
entry:
  %retval = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca ptr, align 8
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %b.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [80 x i32], ptr @a, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %p, align 8
  %1 = load i32, ptr %b.addr, align 4
  store i32 %1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %2 = load i32, ptr %i, align 4
  %dec = add i32 %2, -1
  store i32 %dec, ptr %i, align 4
  %cmp = icmp ult i32 %dec, -1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %mul = mul i32 %3, 3
  %add = add i32 %mul, ptrtoint (ptr @a to i32)
  %4 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %4, i32 -1
  store ptr %incdec.ptr, ptr %p, align 8
  store i32 %add, ptr %incdec.ptr, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr getelementptr inbounds ([80 x i32], ptr @a, i64 0, i64 1), align 4
  store i32 0, ptr @a, align 16
  %call = call i32 @f(i32 noundef 2)
  %0 = load i32, ptr @a, align 16
  %cmp = icmp ne i32 %0, ptrtoint (ptr @a to i32)
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds ([80 x i32], ptr @a, i64 0, i64 1), align 4
  %cmp1 = icmp ne i32 %1, add nsw (i32 ptrtoint (ptr @a to i32), i32 3)
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %lor.lhs.false
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
