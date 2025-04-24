; 133074934596241866691905988014794911971
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/133074934596241866691905988014794911971_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/133074934596241866691905988014794911971.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %p = alloca ptr, align 8
  %b = alloca i64, align 8
  %.compoundliteral = alloca [3 x i32], align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %a, align 4
  store i32 0, ptr %.compoundliteral, align 4
  %arrayinit.element = getelementptr inbounds i32, ptr %.compoundliteral, i64 1
  store i32 1, ptr %arrayinit.element, align 4
  %arrayinit.element1 = getelementptr inbounds i32, ptr %.compoundliteral, i64 2
  store i32 2, ptr %arrayinit.element1, align 4
  %0 = load i32, ptr %a, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %a, align 4
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr inbounds [3 x i32], ptr %.compoundliteral, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %p, align 8
  %1 = ptrtoint ptr %arrayidx to i64
  store i64 %1, ptr %b, align 8
  %2 = load i32, ptr %a, align 4
  %cmp = icmp ne i32 %2, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %p, align 8
  %4 = load i32, ptr %3, align 4
  %cmp2 = icmp ne i32 %4, 1
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %5 = load i64, ptr %b, align 8
  %6 = inttoptr i64 %5 to ptr
  %7 = load i32, ptr %6, align 4
  %cmp4 = icmp ne i32 %7, 1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %lor.lhs.false3
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
