; 106036111894731487758834700165723537291
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/106036111894731487758834700165723537291_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/106036111894731487758834700165723537291.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = zext i32 %call to i64
  %1 = call ptr @llvm.stacksave.p0()
  store ptr %1, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %0, align 16
  store i64 %0, ptr %__vla_expr0, align 8
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 0
  store i32 2, ptr %arrayidx, align 16
  %arrayidx1 = getelementptr inbounds i32, ptr %vla, i64 1
  store i32 3, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds i32, ptr %vla, i64 0
  store ptr %arrayidx2, ptr %p, align 8
  %2 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  %3 = load i32, ptr %2, align 4
  %cmp = icmp ne i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %p, align 8
  %incdec.ptr3 = getelementptr inbounds nuw i32, ptr %4, i32 1
  store ptr %incdec.ptr3, ptr %p, align 8
  %5 = load i32, ptr %4, align 4
  %cmp4 = icmp ne i32 %5, 3
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %arrayidx7 = getelementptr inbounds i32, ptr %vla, i64 1
  store ptr %arrayidx7, ptr %p, align 8
  %6 = load ptr, ptr %p, align 8
  %incdec.ptr8 = getelementptr inbounds i32, ptr %6, i32 -1
  store ptr %incdec.ptr8, ptr %p, align 8
  %7 = load i32, ptr %6, align 4
  %cmp9 = icmp ne i32 %7, 3
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %8 = load ptr, ptr %p, align 8
  %incdec.ptr12 = getelementptr inbounds i32, ptr %8, i32 -1
  store ptr %incdec.ptr12, ptr %p, align 8
  %9 = load i32, ptr %8, align 4
  %cmp13 = icmp ne i32 %9, 2
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %arrayidx16 = getelementptr inbounds i32, ptr %vla, i64 0
  store ptr %arrayidx16, ptr %p, align 8
  %10 = load ptr, ptr %p, align 8
  %incdec.ptr17 = getelementptr inbounds nuw i32, ptr %10, i32 1
  store ptr %incdec.ptr17, ptr %p, align 8
  %11 = load i32, ptr %incdec.ptr17, align 4
  %cmp18 = icmp ne i32 %11, 3
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end15
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %arrayidx21 = getelementptr inbounds i32, ptr %vla, i64 1
  store ptr %arrayidx21, ptr %p, align 8
  %12 = load ptr, ptr %p, align 8
  %incdec.ptr22 = getelementptr inbounds i32, ptr %12, i32 -1
  store ptr %incdec.ptr22, ptr %p, align 8
  %13 = load i32, ptr %incdec.ptr22, align 4
  %cmp23 = icmp ne i32 %13, 2
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end20
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then24, %if.then19, %if.then14, %if.then10, %if.then5, %if.then
  %14 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %14)
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
