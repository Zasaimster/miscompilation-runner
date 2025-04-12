; 108364613747433729275516544294566293913
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/108364613747433729275516544294566293913.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/108364613747433729275516544294566293913.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @utest(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %shr = lshr i32 %0, 0
  %1 = load i32, ptr %x.addr, align 4
  %cmp = icmp ne i32 %shr, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @link_error()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @link_error() #0 {
entry:
  call void @abort() #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @stest(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %shr = ashr i32 %0, 0
  %1 = load i32, ptr %x.addr, align 4
  %cmp = icmp ne i32 %shr, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @link_error()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %x.addr, align 4
  %shl = shl i32 %2, 0
  %3 = load i32, ptr %x.addr, align 4
  %cmp1 = icmp ne i32 %shl, %3
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @link_error()
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i32, ptr %x.addr, align 4
  %shl4 = shl i32 0, %4
  %cmp5 = icmp ne i32 %shl4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @link_error()
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end3
  %5 = load i32, ptr %x.addr, align 4
  %shr8 = ashr i32 0, %5
  %cmp9 = icmp ne i32 %shr8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @link_error()
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @utest(i32 noundef 9)
  call void @utest(i32 noundef 0)
  call void @stest(i32 noundef 9)
  call void @stest(i32 noundef 0)
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

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
