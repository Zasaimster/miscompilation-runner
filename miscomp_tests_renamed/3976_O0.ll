; 166765792318893049172648247676989796984
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/166765792318893049172648247676989796984.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/166765792318893049172648247676989796984.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"a is true\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"a is false\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"b is true\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"b is false\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %a, align 4
  %0 = load i32, ptr %a, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, ptr %a, align 4
  %add = add nsw i32 %1, 1
  store i32 %add, ptr %a, align 4
  store i32 0, ptr %b, align 4
  %2 = load i32, ptr %b, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.end
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end7

if.else5:                                         ; preds = %if.end
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.then3
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
