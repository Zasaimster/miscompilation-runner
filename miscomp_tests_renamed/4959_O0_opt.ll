; 152343864655970401117202209476958287239
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/152343864655970401117202209476958287239_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/152343864655970401117202209476958287239.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S2 = type { i32, i32, %union.anon, %struct.S1 }
%union.anon = type { i32 }
%struct.S1 = type { i32, i32 }

@v = dso_local global %struct.S2 { i32 1, i32 2, %union.anon { i32 3 }, %struct.S1 { i32 4, i32 5 } }, align 4
@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = load i32, ptr getelementptr inbounds nuw (%struct.S2, ptr @v, i32 0, i32 1), align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds nuw (%struct.S2, ptr @v, i32 0, i32 2), align 4
  %cmp1 = icmp ne i32 %1, 3
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, ptr getelementptr inbounds nuw (%struct.S2, ptr @v, i32 0, i32 2), align 4
  %cmp2 = icmp ne i32 %2, 3
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i32 3, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %lor.lhs.false
  %3 = load i32, ptr getelementptr inbounds nuw (%struct.S2, ptr @v, i32 0, i32 3), align 4
  %cmp5 = icmp ne i32 %3, 4
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  store i32 4, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end4
  %4 = load i32, ptr getelementptr inbounds nuw (%struct.S1, ptr getelementptr inbounds nuw (%struct.S2, ptr @v, i32 0, i32 3), i32 0, i32 1), align 4
  %cmp8 = icmp ne i32 %4, 5
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  store i32 5, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end7
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then9, %if.then6, %if.then3, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
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
