; 160304683945220046723100258523884733734
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/160304683945220046723100258523884733734_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/160304683945220046723100258523884733734.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bar = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Loop completed!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %foo = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 %call, ptr %foo, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %foo, align 4
  %1 = load i32, ptr @bar, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr @bar, align 4
  %3 = load i32, ptr %foo, align 4
  %sub = sub nsw i32 %3, %2
  store i32 %sub, ptr %foo, align 4
  %4 = load i32, ptr %foo, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %p.addr, align 8
  store i32 %4, ptr %5, align 4
  store i32 1, ptr @bar, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %tab = alloca [2 x i32], align 4
  store i32 0, ptr %retval, align 4
  %arrayidx = getelementptr inbounds [2 x i32], ptr %tab, i64 0, i64 1
  store i32 0, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [2 x i32], ptr %tab, i64 0, i64 0
  store i32 0, ptr %arrayidx1, align 4
  %arraydecay = getelementptr inbounds [2 x i32], ptr %tab, i64 0, i64 0
  %call = call i32 @f(ptr noundef %arraydecay)
  %arrayidx2 = getelementptr inbounds [2 x i32], ptr %tab, i64 0, i64 0
  %0 = load i32, ptr %arrayidx2, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %arrayidx3 = getelementptr inbounds [2 x i32], ptr %tab, i64 0, i64 1
  %1 = load i32, ptr %arrayidx3, align 4
  %cmp4 = icmp ne i32 %1, 1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  call void @exit(i32 noundef 0) #5
  unreachable
}

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
