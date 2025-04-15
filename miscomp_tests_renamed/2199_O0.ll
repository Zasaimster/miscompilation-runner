; 122721102393809041500391017858504763673
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/122721102393809041500391017858504763673.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/122721102393809041500391017858504763673.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@m = dso_local global i32 0, align 4
@n = dso_local global i32 0, align 4
@o = dso_local global i32 0, align 4
@p = dso_local global i32 0, align 4
@s = dso_local global i32 0, align 4
@u = dso_local global i32 0, align 4
@i = dso_local global i32 0, align 4
@c = dso_local global i8 0, align 1
@q = dso_local global i8 0, align 1
@y = dso_local global i8 0, align 1
@d = dso_local global i16 0, align 2
@e = dso_local global i8 0, align 1
@t = dso_local global i32 0, align 4
@v = internal global i16 0, align 2
@h = internal global i32 0, align 4
@f = internal global i32 0, align 4
@r = internal global i16 0, align 2
@g = internal global i16 0, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fn1(i32 noundef %p1) #0 {
entry:
  %p1.addr = alloca i32, align 4
  store i32 %p1, ptr %p1.addr, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @fn2(i8 noundef zeroext %p1, i32 noundef %p2) #0 {
entry:
  %p1.addr = alloca i8, align 1
  %p2.addr = alloca i32, align 4
  store i8 %p1, ptr %p1.addr, align 1
  store i32 %p2, ptr %p2.addr, align 4
  %0 = load i32, ptr %p2.addr, align 4
  %cmp = icmp sge i32 %0, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8, ptr %p1.addr, align 1
  %conv = zext i8 %1 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i8, ptr %p1.addr, align 1
  %conv1 = zext i8 %2 to i32
  %3 = load i32, ptr %p2.addr, align 4
  %shr = ashr i32 %conv1, %3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %shr, %cond.false ]
  %conv2 = trunc i32 %cond to i8
  ret i8 %conv2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call signext i16 @fn3()
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal signext i16 @fn3() #0 {
entry:
  %w = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc53, %entry
  %0 = load i32, ptr @p, align 4
  %cmp = icmp slt i32 %0, 31
  br i1 %cmp, label %for.body, label %for.end55

for.body:                                         ; preds = %for.cond
  %1 = load i8, ptr @c, align 1
  %conv = sext i8 %1 to i32
  %2 = load i8, ptr @c, align 1
  %conv1 = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv1, 0
  %land.ext = zext i1 %tobool to i32
  %3 = load i8, ptr @c, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp eq i32 %land.ext, %conv2
  %conv4 = zext i1 %cmp3 to i32
  %or = or i32 %conv, %conv4
  %call = call i32 @fn1(i32 noundef %or)
  store i32 %call, ptr @s, align 4
  %4 = load i32, ptr @s, align 4
  %conv5 = trunc i32 %4 to i8
  %5 = load i32, ptr %x, align 4
  %call6 = call zeroext i8 @fn2(i8 noundef zeroext %conv5, i32 noundef %5)
  %conv7 = zext i8 %call6 to i32
  store i32 %conv7, ptr @t, align 4
  %6 = load i8, ptr @c, align 1
  %conv8 = sext i8 %6 to i32
  %7 = load i32, ptr @t, align 4
  %conv9 = trunc i32 %7 to i16
  store i16 %conv9, ptr @d, align 2
  %conv10 = sext i16 %conv9 to i32
  store i32 %conv10, ptr @m, align 4
  %8 = load i32, ptr @p, align 4
  %cmp11 = icmp eq i32 %conv10, %8
  %conv12 = zext i1 %cmp11 to i32
  store i32 %conv12, ptr @o, align 4
  %conv13 = sext i32 %conv12 to i64
  %cmp14 = icmp ule i64 %conv13, 4
  %conv15 = zext i1 %cmp14 to i32
  %sub = sub i32 0, %conv15
  %cmp16 = icmp ugt i32 %conv8, %sub
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  %9 = load i32, ptr @n, align 4
  %tobool18 = icmp ne i32 %9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %10 = phi i1 [ false, %for.body ], [ %tobool18, %land.rhs ]
  %land.ext19 = zext i1 %10 to i32
  %conv20 = trunc i32 %land.ext19 to i8
  store i8 %conv20, ptr @c, align 1
  %11 = load i8, ptr @c, align 1
  %conv21 = sext i8 %11 to i32
  %sub22 = sub nsw i32 0, %conv21
  %conv23 = trunc i32 %sub22 to i16
  store i16 %conv23, ptr @v, align 2
  store i8 1, ptr @y, align 1
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc, %land.end
  %12 = load i8, ptr @y, align 1
  %tobool25 = icmp ne i8 %12, 0
  br i1 %tobool25, label %for.body26, label %for.end

for.body26:                                       ; preds = %for.cond24
  %13 = load i16, ptr @v, align 2
  %conv27 = sext i16 %13 to i32
  %cmp28 = icmp eq i32 %conv27, 1
  %conv29 = zext i1 %cmp28 to i32
  %conv30 = trunc i32 %conv29 to i8
  store i8 %conv30, ptr @e, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body26
  %14 = load i8, ptr @y, align 1
  %inc = add i8 %14, 1
  store i8 %inc, ptr @y, align 1
  br label %for.cond24, !llvm.loop !6

for.end:                                          ; preds = %for.cond24
  store i16 0, ptr @d, align 2
  br label %for.cond31

for.cond31:                                       ; preds = %for.end
  %15 = load i32, ptr @h, align 4
  %cmp32 = icmp ne i32 %15, 2
  br i1 %cmp32, label %for.body34, label %for.end52

for.body34:                                       ; preds = %for.cond31
  br label %for.cond35

for.cond35:                                       ; preds = %if.end50, %for.body34
  %16 = load i32, ptr @m, align 4
  %tobool36 = icmp ne i32 %16, 0
  br i1 %tobool36, label %if.end, label %if.then

if.then:                                          ; preds = %for.cond35
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.cond35
  %17 = load i32, ptr @f, align 4
  %sub37 = sub nsw i32 7, %17
  %conv38 = trunc i32 %sub37 to i16
  store i16 %conv38, ptr @r, align 2
  %18 = load i32, ptr @i, align 4
  %19 = load i16, ptr @r, align 2
  %conv39 = sext i16 %19 to i32
  %or40 = or i32 %18, %conv39
  %conv41 = trunc i32 %or40 to i8
  store i8 %conv41, ptr @e, align 1
  %conv42 = zext i8 %conv41 to i32
  store i32 %conv42, ptr %x, align 4
  %20 = load i32, ptr @u, align 4
  %21 = load i16, ptr @g, align 2
  %conv43 = sext i16 %21 to i32
  %mul = mul nsw i32 %20, %conv43
  %conv44 = trunc i32 %mul to i8
  store i8 %conv44, ptr @q, align 1
  %22 = load i32, ptr @b, align 4
  %23 = load i8, ptr @q, align 1
  %conv45 = sext i8 %23 to i32
  %cmp46 = icmp eq i32 %22, %conv45
  %conv47 = zext i1 %cmp46 to i32
  store i32 %conv47, ptr %w, align 4
  %24 = load i32, ptr %w, align 4
  %tobool48 = icmp ne i32 %24, 0
  br i1 %tobool48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end
  br label %for.end51

if.end50:                                         ; preds = %if.end
  br label %for.cond35

for.end51:                                        ; preds = %if.then49
  br label %for.end52

for.end52:                                        ; preds = %for.end51, %for.cond31
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %25 = load i32, ptr @p, align 4
  %inc54 = add nsw i32 %25, 1
  store i32 %inc54, ptr @p, align 4
  br label %for.cond, !llvm.loop !8

for.end55:                                        ; preds = %for.cond
  %26 = load i32, ptr %x, align 4
  %conv56 = trunc i32 %26 to i16
  ret i16 %conv56
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
!8 = distinct !{!8, !7}
