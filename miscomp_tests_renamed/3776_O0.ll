; 165938314731095930621594438275837315199
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/165938314731095930621594438275837315199.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/165938314731095930621594438275837315199.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i32, %union.anon, %struct.anon, %struct.anon.2 }
%union.anon = type { i32 }
%struct.anon = type { %union.anon.0 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%struct.anon.2 = type { i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %v = alloca %struct.s, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (...) @func5()
  %a = getelementptr inbounds nuw %struct.s, ptr %v, i32 0, i32 0
  store i32 %call, ptr %a, align 4
  %0 = getelementptr inbounds nuw %struct.s, ptr %v, i32 0, i32 1
  store i32 2, ptr %0, align 4
  %1 = getelementptr inbounds nuw %struct.s, ptr %v, i32 0, i32 2
  %2 = getelementptr inbounds nuw %struct.anon, ptr %1, i32 0, i32 0
  %c = getelementptr inbounds nuw %struct.anon.1, ptr %2, i32 0, i32 0
  store i32 3, ptr %c, align 4
  %3 = getelementptr inbounds nuw %struct.s, ptr %v, i32 0, i32 3
  %d = getelementptr inbounds nuw %struct.anon.2, ptr %3, i32 0, i32 0
  store i32 4, ptr %d, align 4
  %a1 = getelementptr inbounds nuw %struct.s, ptr %v, i32 0, i32 0
  %4 = load i32, ptr %a1, align 4
  %cmp = icmp ne i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds nuw %struct.s, ptr %v, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %cmp2 = icmp ne i32 %6, 2
  br i1 %cmp2, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %7 = getelementptr inbounds nuw %struct.s, ptr %v, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %cmp3 = icmp ne i32 %8, 2
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  store i32 2, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %9 = getelementptr inbounds nuw %struct.s, ptr %v, i32 0, i32 2
  %10 = getelementptr inbounds nuw %struct.anon, ptr %9, i32 0, i32 0
  %c6 = getelementptr inbounds nuw %struct.anon.1, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %c6, align 4
  %cmp7 = icmp ne i32 %11, 3
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  store i32 3, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end5
  %12 = getelementptr inbounds nuw %struct.s, ptr %v, i32 0, i32 3
  %d10 = getelementptr inbounds nuw %struct.anon.2, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %d10, align 4
  %cmp11 = icmp ne i32 %13, 4
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  store i32 4, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end9
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then12, %if.then8, %if.then4, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

declare i32 @func5(...) #1

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
