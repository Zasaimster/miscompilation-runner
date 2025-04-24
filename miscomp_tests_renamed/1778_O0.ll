; 131682063513514935082825321296449228818
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/131682063513514935082825321296449228818.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/131682063513514935082825321296449228818.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @example6(i32 noundef %flag) #0 {
entry:
  %flag.addr = alloca i32, align 4
  %val = alloca i32, align 4
  %dead = alloca i32, align 4
  store i32 %flag, ptr %flag.addr, align 4
  store i32 0, ptr %val, align 4
  %0 = load i32, ptr %flag.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %val, align 4
  %add = add nsw i32 %1, 2
  store i32 %add, ptr %dead, align 4
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
