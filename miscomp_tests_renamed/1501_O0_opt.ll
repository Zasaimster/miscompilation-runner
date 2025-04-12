; 103266951528445170432326224022600208884
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/103266951528445170432326224022600208884_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/103266951528445170432326224022600208884.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i64 noundef %us, i64 noundef %vs) #0 {
entry:
  %us.addr = alloca i64, align 8
  %vs.addr = alloca i64, align 8
  %aus = alloca i64, align 8
  %avs = alloca i64, align 8
  %t = alloca i64, align 8
  store i64 %us, ptr %us.addr, align 8
  store i64 %vs, ptr %vs.addr, align 8
  %0 = load i64, ptr %us.addr, align 8
  %sub = sub nsw i64 0, %0
  %cmp = icmp sge i64 %sub, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, ptr %us.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i64, ptr %us.addr, align 8
  %sub1 = sub nsw i64 0, %2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ %sub1, %cond.false ]
  store i64 %cond, ptr %aus, align 8
  %3 = load i64, ptr %vs.addr, align 8
  %cmp2 = icmp sge i64 %3, 0
  br i1 %cmp2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %cond.end
  %4 = load i64, ptr %vs.addr, align 8
  br label %cond.end6

cond.false4:                                      ; preds = %cond.end
  %5 = load i64, ptr %vs.addr, align 8
  %sub5 = sub nsw i64 0, %5
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false4, %cond.true3
  %cond7 = phi i64 [ %4, %cond.true3 ], [ %sub5, %cond.false4 ]
  store i64 %cond7, ptr %avs, align 8
  %6 = load i64, ptr %aus, align 8
  %7 = load i64, ptr %avs, align 8
  %cmp8 = icmp slt i64 %6, %7
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end6
  %8 = load i64, ptr %aus, align 8
  store i64 %8, ptr %t, align 8
  %9 = load i64, ptr %avs, align 8
  store i64 %9, ptr %aus, align 8
  %10 = load i64, ptr %aus, align 8
  store i64 %10, ptr %avs, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end6
  %11 = load i64, ptr %avs, align 8
  %conv = trunc i64 %11 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @f(i64 noundef 3, i64 noundef 17)
  %cmp = icmp ne i32 %call, 17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
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
