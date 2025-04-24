; 133386017096991328177254900402676931236
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/133386017096991328177254900402676931236.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/133386017096991328177254900402676931236.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32 }

@c = dso_local global i32 1, align 4
@d = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@s = dso_local global %struct.S zeroinitializer, align 4
@g = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @foo(i8 noundef signext %i, i32 noundef %j) #0 {
entry:
  %i.addr = alloca i8, align 1
  %j.addr = alloca i32, align 4
  store i8 %i, ptr %i.addr, align 1
  store i32 %j, ptr %j.addr, align 4
  %0 = load i8, ptr %i.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8, ptr %i.addr, align 1
  %conv2 = sext i8 %1 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i8, ptr %i.addr, align 1
  %conv3 = sext i8 %2 to i32
  %3 = load i32, ptr %j.addr, align 4
  %shl = shl i32 %conv3, %3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv2, %cond.true ], [ %shl, %cond.false ]
  %conv4 = trunc i32 %cond to i8
  ret i8 %conv4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %k = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  store i8 -83, ptr %k, align 1
  %0 = load i32, ptr @d, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %L

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @e, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %2 = load i32, ptr @f, align 4
  %tobool2 = icmp ne i32 %2, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %3 = phi i1 [ true, %if.end ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32
  %conv = trunc i32 %lor.ext to i8
  store i8 %conv, ptr %k, align 1
  br label %L

L:                                                ; preds = %lor.end, %if.then
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %L
  %4 = load i32, ptr @b, align 4
  %cmp = icmp slt i32 %4, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load volatile i32, ptr @s, align 4
  %6 = load i8, ptr %k, align 1
  %conv4 = sext i8 %6 to i32
  %7 = load i8, ptr %k, align 1
  %call = call signext i8 @foo(i8 noundef signext %7, i32 noundef 2)
  %conv5 = sext i8 %call to i32
  %cmp6 = icmp slt i32 %conv4, %conv5
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  %8 = load i32, ptr @g, align 4
  %conv8 = trunc i32 %8 to i8
  store i8 %conv8, ptr %k, align 1
  %conv9 = sext i8 %conv8 to i32
  store i32 %conv9, ptr @c, align 4
  %tobool10 = icmp ne i32 %conv9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %9 = phi i1 [ false, %for.body ], [ %tobool10, %land.rhs ]
  %land.ext = zext i1 %9 to i32
  %cmp11 = icmp ne i32 %5, %land.ext
  %conv12 = zext i1 %cmp11 to i32
  br label %for.inc

for.inc:                                          ; preds = %land.end
  %10 = load i32, ptr @b, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr @b, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %11 = load i32, ptr @c, align 4
  %cmp13 = icmp ne i32 %11, 1
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.end
  call void @abort() #2
  unreachable

if.end16:                                         ; preds = %for.end
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
