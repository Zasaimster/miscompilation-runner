; 140771285176030623261991251071517540311
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/140771285176030623261991251071517540311.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/140771285176030623261991251071517540311.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global i32 1, align 4
@f = dso_local global i32 1, align 4
@e = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Hello World\0A\00", align 1
@c = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@k = dso_local global i32 0, align 4
@j = dso_local global i8 0, align 1
@g = dso_local global i8 0, align 1
@i = dso_local global i32 0, align 4
@h = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @fn1() #0 {
entry:
  %l = alloca i32, align 4
  store i32 0, ptr @e, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 0, ptr @c, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end18, %entry
  %0 = load i32, ptr @a, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i32, ptr @b, align 4
  %tobool1 = icmp ne i32 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %2 = phi i1 [ false, %for.cond ], [ %tobool1, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  store i32 %land.ext, ptr @k, align 4
  %3 = load i32, ptr @k, align 4
  %mul = mul nsw i32 %3, 54
  %conv = trunc i32 %mul to i8
  store i8 %conv, ptr @j, align 1
  %4 = load i8, ptr @j, align 1
  %conv2 = sext i8 %4 to i32
  %mul3 = mul nsw i32 %conv2, 147
  %conv4 = trunc i32 %mul3 to i8
  store i8 %conv4, ptr @g, align 1
  %5 = load i8, ptr @g, align 1
  %conv5 = sext i8 %5 to i32
  %not = xor i32 %conv5, -1
  %conv6 = sext i32 %not to i64
  %6 = load i32, ptr @e, align 4
  %conv7 = sext i32 %6 to i64
  %add = add nsw i64 %conv6, %conv7
  %tobool8 = icmp ne i64 %add, 0
  br i1 %tobool8, label %land.rhs9, label %land.end10

land.rhs9:                                        ; preds = %land.end
  br label %land.end10

land.end10:                                       ; preds = %land.rhs9, %land.end
  %7 = phi i1 [ false, %land.end ], [ true, %land.rhs9 ]
  %land.ext11 = zext i1 %7 to i32
  store i32 %land.ext11, ptr %l, align 4
  %8 = load i32, ptr @d, align 4
  %tobool12 = icmp ne i32 %8, 0
  br i1 %tobool12, label %if.then, label %if.else

if.then:                                          ; preds = %land.end10
  %9 = load i32, ptr %l, align 4
  store i32 %9, ptr @c, align 4
  br label %if.end

if.else:                                          ; preds = %land.end10
  %10 = load i32, ptr %l, align 4
  %conv13 = sext i32 %10 to i64
  %mul14 = mul i64 %conv13, 9
  %conv15 = trunc i64 %mul14 to i32
  store i32 %conv15, ptr @i, align 4
  store i32 %conv15, ptr @h, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32, ptr @f, align 4
  %tobool16 = icmp ne i32 %11, 0
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end
  ret void

if.end18:                                         ; preds = %if.end
  br label %for.cond
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @fn1()
  %0 = load i32, ptr @c, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
