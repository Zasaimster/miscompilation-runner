; 151009086707406115817603262468557023691
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/151009086707406115817603262468557023691_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/151009086707406115817603262468557023691.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"This won't be compiled.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i8, align 1
  %d = alloca i8, align 1
  %nbits = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i8 -1, ptr %c, align 1
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 %call, ptr %nbits, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %cmp = icmp slt i32 %call1, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %nbits, align 4
  %shl = shl i32 1, %0
  %sub = sub nsw i32 %shl, 1
  %conv = trunc i32 %sub to i8
  store i8 %conv, ptr %d, align 1
  %1 = load i8, ptr %d, align 1
  %conv2 = sext i8 %1 to i32
  %2 = load i8, ptr %c, align 1
  %conv3 = sext i8 %2 to i32
  %cmp4 = icmp eq i32 %conv2, %conv3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %3 = load i32, ptr %nbits, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %nbits, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then, %for.cond
  %4 = load i32, ptr %nbits, align 4
  %cmp6 = icmp eq i32 %4, 100
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.end
  call void @abort() #4
  unreachable

if.end9:                                          ; preds = %for.end
  call void @exit(i32 noundef 0) #5
  unreachable
}

declare i32 @printf(ptr noundef, ...) #1

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
