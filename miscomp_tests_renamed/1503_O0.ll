; 126861598024424409708043678023116791279
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/126861598024424409708043678023116791279.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/126861598024424409708043678023116791279.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i8 6, align 1
@b = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Hello, optimizer!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @fn1()
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @fn1() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %g = alloca i32, align 4
  %h = alloca i8, align 1
  %0 = load i8, ptr @a, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp sgt i32 %conv, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i8, ptr @a, align 1
  %conv2 = zext i8 %1 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %conv2, %cond.false ]
  store i32 %cond, ptr %i, align 4
  %2 = load i8, ptr @a, align 1
  %conv3 = zext i8 %2 to i32
  %tobool = icmp ne i32 %conv3, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end
  %3 = load i8, ptr @a, align 1
  %conv4 = zext i8 %3 to i32
  store i32 %conv4, ptr @b, align 4
  %tobool5 = icmp ne i32 %conv4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %4 = phi i1 [ false, %cond.end ], [ %tobool5, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  store i32 %land.ext, ptr @c, align 4
  %and = and i32 6, %land.ext
  store i32 %and, ptr %j, align 4
  store i32 0, ptr %d, align 4
  %5 = load i8, ptr @a, align 1
  %conv6 = zext i8 %5 to i32
  store i32 %conv6, ptr %e, align 4
  %6 = load i32, ptr @c, align 4
  %not = xor i32 %6, -1
  store i32 %not, ptr %f, align 4
  %7 = load i32, ptr @b, align 4
  %tobool7 = icmp ne i32 %7, 0
  br i1 %tobool7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.end
  %8 = load i8, ptr @a, align 1
  %conv8 = zext i8 %8 to i32
  %tobool9 = icmp ne i32 %conv8, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.end
  %9 = phi i1 [ true, %land.end ], [ %tobool9, %lor.rhs ]
  %lor.ext = zext i1 %9 to i32
  store i32 %lor.ext, ptr %g, align 4
  %10 = load i8, ptr @a, align 1
  %conv10 = zext i8 %10 to i32
  %not11 = xor i32 %conv10, -1
  %conv12 = trunc i32 %not11 to i8
  store i8 %conv12, ptr %h, align 1
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %11 = load i8, ptr %h, align 1
  %conv13 = zext i8 %11 to i32
  %tobool14 = icmp ne i32 %conv13, 0
  br i1 %tobool14, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.end
  %12 = load i32, ptr %g, align 4
  %tobool15 = icmp ne i32 %12, 0
  br i1 %tobool15, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %13 = load i8, ptr @a, align 1
  %conv16 = zext i8 %13 to i32
  store i32 %conv16, ptr %d, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.end
  %14 = load i32, ptr %f, align 4
  %15 = load i32, ptr %d, align 4
  %mul = mul nsw i32 %14, %15
  %16 = load i8, ptr %h, align 1
  %conv17 = zext i8 %16 to i32
  %mul18 = mul nsw i32 %mul, %conv17
  %not19 = xor i32 %mul18, -1
  %sub = sub nsw i32 0, %not19
  %17 = load i32, ptr @c, align 4
  %add = add nsw i32 %sub, %17
  %tobool20 = icmp ne i32 %add, 0
  br i1 %tobool20, label %land.rhs21, label %land.end28

land.rhs21:                                       ; preds = %if.end
  %18 = load i32, ptr %e, align 4
  %tobool22 = icmp ne i32 %18, 0
  br i1 %tobool22, label %lor.end25, label %lor.rhs23

lor.rhs23:                                        ; preds = %land.rhs21
  %19 = load i32, ptr %i, align 4
  %tobool24 = icmp ne i32 %19, 0
  br label %lor.end25

lor.end25:                                        ; preds = %lor.rhs23, %land.rhs21
  %20 = phi i1 [ true, %land.rhs21 ], [ %tobool24, %lor.rhs23 ]
  %lor.ext26 = zext i1 %20 to i32
  %21 = load i32, ptr %f, align 4
  %xor = xor i32 %lor.ext26, %21
  %tobool27 = icmp ne i32 %xor, 0
  br label %land.end28

land.end28:                                       ; preds = %lor.end25, %if.end
  %22 = phi i1 [ false, %if.end ], [ %tobool27, %lor.end25 ]
  %land.ext29 = zext i1 %22 to i32
  store i32 %land.ext29, ptr %i, align 4
  %23 = load i32, ptr %i, align 4
  %cmp30 = icmp ne i32 %23, 1
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %land.end28
  call void @abort() #3
  unreachable

if.end33:                                         ; preds = %land.end28
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

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
