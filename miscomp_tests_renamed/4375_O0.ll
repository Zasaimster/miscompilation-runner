; 159512494609893310921366278087783630780
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/159512494609893310921366278087783630780.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/159512494609893310921366278087783630780.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [7 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 16
@c = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %d = alloca i32, align 4
  %i = alloca i32, align 4
  %f = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %d, align 4
  store i32 1, ptr %i, align 4
  store i8 0, ptr %f, align 1
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, ptr %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [7 x i32], ptr @a, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %d, align 4
  %2 = load i8, ptr %f, align 1
  %loadedv = trunc i8 %2 to i1
  br i1 %loadedv, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %3 = load i32, ptr %d, align 4
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, ptr @c, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr @c, align 4
  br label %do.end

if.end:                                           ; preds = %land.lhs.true, %do.body
  %5 = load i32, ptr %i, align 4
  %inc1 = add nsw i32 %5, 1
  store i32 %inc1, ptr %i, align 4
  %6 = load i32, ptr %d, align 4
  %cmp2 = icmp eq i32 %6, 3
  %storedv = zext i1 %cmp2 to i8
  store i8 %storedv, ptr %f, align 1
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %7 = load i32, ptr %d, align 4
  %cmp3 = icmp slt i32 %7, 7
  br i1 %cmp3, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond, %if.then
  %call = call i32 (...) @printHello()
  %8 = load i32, ptr @c, align 4
  %cmp4 = icmp ne i32 %8, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %do.end
  call void @abort() #3
  unreachable

if.end6:                                          ; preds = %do.end
  ret i32 0
}

declare i32 @printHello(...) #1

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
