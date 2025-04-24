; 128743475928438049602553408475089910484
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/128743475928438049602553408475089910484.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/128743475928438049602553408475089910484.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\7F\FF\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"I am not used!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %hicount = alloca i32, align 4
  %c = alloca ptr, align 8
  %str = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %hicount, align 4
  store ptr @.str, ptr %str, align 8
  %0 = load ptr, ptr %str, align 8
  store ptr %0, ptr %c, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %c, align 8
  %2 = load i8, ptr %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %c, align 8
  %4 = load i8, ptr %3, align 1
  %conv = zext i8 %4 to i32
  %cmp = icmp ult i32 %conv, 128
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %hicount, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %hicount, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load ptr, ptr %c, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %c, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %7 = load i32, ptr %hicount, align 4
  %cmp2 = icmp ne i32 %7, 1
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.end
  call void @abort() #3
  unreachable

if.end5:                                          ; preds = %for.end
  ret i32 0
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
