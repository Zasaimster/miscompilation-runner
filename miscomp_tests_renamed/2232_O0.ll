; 138957699325513164571049589317938696459
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/138957699325513164571049589317938696459.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/138957699325513164571049589317938696459.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"Positive\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [10 x i32], align 16
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %arrayidx = getelementptr inbounds [10 x i32], ptr %a, i64 0, i64 1
  store ptr %arrayidx, ptr %q, align 8
  %0 = load ptr, ptr %q, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %0, i64 -1
  store ptr %arrayidx1, ptr %p, align 8
  %arraydecay = getelementptr inbounds [10 x i32], ptr %a, i64 0, i64 0
  %cmp = icmp ugt ptr %arraydecay, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.else
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
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
