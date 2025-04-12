; 165184378701000072293836699765569784405
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/165184378701000072293836699765569784405_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/165184378701000072293836699765569784405.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_list = dso_local global [1 x i8] c"*", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @g(ptr noundef %p, ptr noundef %list, i32 noundef %length, ptr noundef %elementPtr, ptr noundef %nextPtr) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %elementPtr.addr = alloca ptr, align 8
  %nextPtr.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %list, ptr %list.addr, align 8
  store i32 %length, ptr %length.addr, align 4
  store ptr %elementPtr, ptr %elementPtr.addr, align 8
  store ptr %nextPtr, ptr %nextPtr.addr, align 8
  %0 = load ptr, ptr %nextPtr.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %cmp = icmp ne ptr %1, @g_list
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %nextPtr.addr, align 8
  %3 = load ptr, ptr %2, align 8
  store i8 0, ptr %3, align 1
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %list = alloca ptr, align 8
  %element = alloca ptr, align 8
  %i = alloca i32, align 4
  %length = alloca i32, align 4
  %prevList = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store ptr @g_list, ptr %list, align 8
  store i32 100, ptr %length, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %list, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %list, align 8
  store ptr %2, ptr %prevList, align 8
  %3 = load ptr, ptr %list, align 8
  %4 = load i32, ptr %length, align 4
  call void @g(ptr noundef null, ptr noundef %3, i32 noundef %4, ptr noundef %element, ptr noundef %list)
  %5 = load ptr, ptr %list, align 8
  %6 = load ptr, ptr %prevList, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %7 = load i32, ptr %length, align 4
  %conv2 = sext i32 %7 to i64
  %sub = sub nsw i64 %conv2, %sub.ptr.sub
  %conv3 = trunc i64 %sub to i32
  store i32 %conv3, ptr %length, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
