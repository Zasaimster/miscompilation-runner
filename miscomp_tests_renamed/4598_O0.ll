; 197051125120169245703071582949015799307
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/197051125120169245703071582949015799307.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/197051125120169245703071582949015799307.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_2 = internal global i8 1, align 1
@l_8 = internal global ptr @g_9, align 8
@g_9 = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %l_11 = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  store i8 -2, ptr %l_11, align 1
  %0 = load i8, ptr @g_2, align 1
  %conv = zext i8 %0 to i32
  %1 = load ptr, ptr @l_8, align 8
  %2 = load i32, ptr %1, align 4
  %or = or i32 %2, %conv
  store i32 %or, ptr %1, align 4
  %3 = load ptr, ptr @l_8, align 8
  %4 = load i32, ptr %3, align 4
  %5 = load i8, ptr %l_11, align 1
  %conv1 = zext i8 %5 to i32
  %or2 = or i32 %conv1, %4
  %conv3 = trunc i32 %or2 to i8
  store i8 %conv3, ptr %l_11, align 1
  %6 = load i8, ptr %l_11, align 1
  %conv4 = zext i8 %6 to i32
  call void @func_12(i32 noundef %conv4)
  %7 = load i32, ptr @g_9, align 4
  %cmp = icmp ne i32 %7, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @func_12(i32 noundef %p_13) #0 {
entry:
  %p_13.addr = alloca i32, align 4
  %l_17 = alloca ptr, align 8
  store i32 %p_13, ptr %p_13.addr, align 4
  store ptr @g_9, ptr %l_17, align 8
  %0 = load i32, ptr %p_13.addr, align 4
  %cmp = icmp slt i32 0, %0
  %conv = zext i1 %cmp to i32
  %1 = load ptr, ptr %l_17, align 8
  %2 = load i32, ptr %1, align 4
  %and = and i32 %2, %conv
  store i32 %and, ptr %1, align 4
  br label %while.body

while.body:                                       ; preds = %entry
  br label %while.end

while.end:                                        ; preds = %while.body
  ret void
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
