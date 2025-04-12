; 169110493917539435267266941569455872369
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/169110493917539435267266941569455872369.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/169110493917539435267266941569455872369.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@expect = dso_local global [10 x i64] [i64 0, i64 1, i64 2, i64 3, i64 4, i64 4, i64 5, i64 6, i64 7, i64 9], align 16
@stack_base = dso_local global ptr null, align 8
@markstack_ptr = dso_local global ptr null, align 8
@list = dso_local global [10 x i64] zeroinitializer, align 16
@indices = dso_local global [10 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @doit() #0 {
entry:
  %src = alloca ptr, align 8
  %dst = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %diff = alloca i32, align 4
  %shift = alloca i32, align 4
  %count = alloca i32, align 4
  %0 = load ptr, ptr @stack_base, align 8
  %add.ptr = getelementptr inbounds i64, ptr %0, i64 5
  store ptr %add.ptr, ptr %sp, align 8
  store i32 2, ptr %diff, align 4
  %1 = load i32, ptr %diff, align 4
  %2 = load ptr, ptr @markstack_ptr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 -1
  %3 = load i32, ptr %arrayidx, align 4
  %4 = load ptr, ptr @markstack_ptr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %4, i64 -2
  %5 = load i32, ptr %arrayidx1, align 4
  %sub = sub nsw i32 %3, %5
  %sub2 = sub nsw i32 %1, %sub
  store i32 %sub2, ptr %shift, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %conv = sext i32 %1 to i64
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x i64], ptr @list, i64 0, i64 %idxprom
  store i64 %conv, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store ptr getelementptr inbounds (i32, ptr @indices, i64 9), ptr @markstack_ptr, align 8
  %4 = load ptr, ptr @markstack_ptr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %4, i64 -1
  store i32 2, ptr %arrayidx1, align 4
  %5 = load ptr, ptr @markstack_ptr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %5, i64 -2
  store i32 1, ptr %arrayidx2, align 4
  store ptr getelementptr inbounds (i64, ptr @list, i64 2), ptr @stack_base, align 8
  call void @doit()
  %call = call i32 @memcmp(ptr noundef @expect, ptr noundef @list, i64 noundef 80) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %for.end
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

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
