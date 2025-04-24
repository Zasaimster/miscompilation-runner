; 100150040680232913311702847805003903045
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/100150040680232913311702847805003903045_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/100150040680232913311702847805003903045.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S1 = type { i32, i32 }
%struct.S2 = type { %struct.S1, ptr, [10 x i32] }

@gs1 = dso_local global %struct.S1 { i32 1, i32 2 }, align 4
@.compoundliteral = internal global { %struct.S1, ptr, <{ i32, i32, [8 x i32] }> } { %struct.S1 { i32 1, i32 2 }, ptr @gs1, <{ i32, i32, [8 x i32] }> <{ i32 1, i32 2, [8 x i32] zeroinitializer }> }, align 8
@s = dso_local global ptr @.compoundliteral, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load ptr, ptr @s, align 8
  %s1 = getelementptr inbounds nuw %struct.S2, ptr %0, i32 0, i32 0
  %a = getelementptr inbounds nuw %struct.S1, ptr %s1, i32 0, i32 0
  %1 = load i32, ptr %a, align 8
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @s, align 8
  %s11 = getelementptr inbounds nuw %struct.S2, ptr %2, i32 0, i32 0
  %b = getelementptr inbounds nuw %struct.S1, ptr %s11, i32 0, i32 1
  %3 = load i32, ptr %b, align 4
  %cmp2 = icmp ne i32 %3, 2
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr @s, align 8
  %ps1 = getelementptr inbounds nuw %struct.S2, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %ps1, align 8
  %a5 = getelementptr inbounds nuw %struct.S1, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %a5, align 4
  %cmp6 = icmp ne i32 %6, 1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i32 3, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end4
  %7 = load ptr, ptr @s, align 8
  %ps19 = getelementptr inbounds nuw %struct.S2, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %ps19, align 8
  %b10 = getelementptr inbounds nuw %struct.S1, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %b10, align 4
  %cmp11 = icmp ne i32 %9, 2
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  store i32 4, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end8
  %10 = load ptr, ptr @s, align 8
  %arr = getelementptr inbounds nuw %struct.S2, ptr %10, i32 0, i32 2
  %arrayidx = getelementptr inbounds [10 x i32], ptr %arr, i64 0, i64 0
  %11 = load i32, ptr %arrayidx, align 8
  %cmp14 = icmp ne i32 %11, 1
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  store i32 5, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end13
  %12 = load ptr, ptr @s, align 8
  %arr17 = getelementptr inbounds nuw %struct.S2, ptr %12, i32 0, i32 2
  %arrayidx18 = getelementptr inbounds [10 x i32], ptr %arr17, i64 0, i64 1
  %13 = load i32, ptr %arrayidx18, align 4
  %cmp19 = icmp ne i32 %13, 2
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  store i32 6, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end16
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then20, %if.then15, %if.then12, %if.then7, %if.then3, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
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
