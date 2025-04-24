; 101215527804914186486108758529236167334
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/101215527804914186486108758529236167334.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/101215527804914186486108758529236167334.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.F = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %timeout = alloca i32, align 4
  %x = alloca i32, align 4
  %i = alloca %struct.F, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %timeout, align 4
  store i32 0, ptr %x, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %x1 = getelementptr inbounds nuw %struct.F, ptr %i, i32 0, i32 0
  %0 = load i32, ptr %x, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %x, align 4
  store i32 %0, ptr %x1, align 4
  %y = getelementptr inbounds nuw %struct.F, ptr %i, i32 0, i32 1
  store i32 0, ptr %y, align 4
  %x2 = getelementptr inbounds nuw %struct.F, ptr %i, i32 0, i32 0
  %1 = load i32, ptr %x2, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %2 = load i32, ptr %timeout, align 4
  %inc3 = add nsw i32 %2, 1
  store i32 %inc3, ptr %timeout, align 4
  %cmp4 = icmp sgt i32 %inc3, 5
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %die

if.end6:                                          ; preds = %if.end
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then, %while.cond
  ret i32 0

die:                                              ; preds = %if.then5
  call void @abort() #3
  unreachable
}

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
