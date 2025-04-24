; 111562847269471538092569105272708453433
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/111562847269471538092569105272708453433.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/111562847269471538092569105272708453433.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, ptr }

@s = dso_local global %struct.anon zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"Hello World\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr @s, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store ptr @.str.1, ptr getelementptr inbounds nuw (%struct.anon, ptr @s, i32 0, i32 1), align 8
  %0 = load ptr, ptr getelementptr inbounds nuw (%struct.anon, ptr @s, i32 0, i32 1), align 8
  %1 = load i32, ptr @s, align 8
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr getelementptr inbounds nuw (%struct.anon, ptr @s, i32 0, i32 1), align 8
  %4 = load i32, ptr @s, align 8
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %3, i64 %idxprom2
  store i8 0, ptr %arrayidx3, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
