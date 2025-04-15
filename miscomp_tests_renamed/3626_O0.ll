; 158000770482723690629356411190755618102
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/158000770482723690629356411190755618102.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/158000770482723690629356411190755618102.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@factab = dso_local global [10 x i64] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @gcd_ll(i64 noundef %x, i64 noundef %y) #0 {
entry:
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %0 = load i64, ptr %x.addr, align 8
  %1 = load i64, ptr %y.addr, align 8
  %rem = urem i64 %0, %1
  store i64 %rem, ptr %x.addr, align 8
  %2 = load i64, ptr %x.addr, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %3 = load i64, ptr %y.addr, align 8
  ret i64 %3

if.end:                                           ; preds = %for.cond
  %4 = load i64, ptr %y.addr, align 8
  %5 = load i64, ptr %x.addr, align 8
  %rem1 = urem i64 %4, %5
  store i64 %rem1, ptr %y.addr, align 8
  br label %for.cond
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @powmod_ll(i64 noundef %b, i32 noundef %e, i64 noundef %m) #0 {
entry:
  %retval = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %e.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %t = alloca i32, align 4
  %pow = alloca i64, align 8
  %i = alloca i32, align 4
  store i64 %b, ptr %b.addr, align 8
  store i32 %e, ptr %e.addr, align 4
  store i64 %m, ptr %m.addr, align 8
  %0 = load i32, ptr %e.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %e.addr, align 4
  store i32 %1, ptr %t, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %t, align 4
  %cmp1 = icmp ne i32 %2, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %t, align 4
  %shr = lshr i32 %3, 1
  store i32 %shr, ptr %t, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %5 = load i64, ptr %b.addr, align 8
  store i64 %5, ptr %pow, align 8
  %6 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %6, 2
  store i32 %sub, ptr %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc9, %for.end
  %7 = load i32, ptr %i, align 4
  %cmp3 = icmp sge i32 %7, 0
  br i1 %cmp3, label %for.body4, label %for.end10

for.body4:                                        ; preds = %for.cond2
  %8 = load i64, ptr %pow, align 8
  %9 = load i64, ptr %pow, align 8
  %mul = mul i64 %8, %9
  %10 = load i64, ptr %m.addr, align 8
  %rem = urem i64 %mul, %10
  store i64 %rem, ptr %pow, align 8
  %11 = load i32, ptr %i, align 4
  %shl = shl i32 1, %11
  %12 = load i32, ptr %e.addr, align 4
  %and = and i32 %shl, %12
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then5, label %if.end8

if.then5:                                         ; preds = %for.body4
  %13 = load i64, ptr %pow, align 8
  %14 = load i64, ptr %b.addr, align 8
  %mul6 = mul i64 %13, %14
  %15 = load i64, ptr %m.addr, align 8
  %rem7 = urem i64 %mul6, %15
  store i64 %rem7, ptr %pow, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %for.body4
  br label %for.inc9

for.inc9:                                         ; preds = %if.end8
  %16 = load i32, ptr %i, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond2, !llvm.loop !8

for.end10:                                        ; preds = %for.cond2
  %17 = load i64, ptr %pow, align 8
  store i64 %17, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end10, %if.then
  %18 = load i64, ptr %retval, align 8
  ret i64 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @facts(i64 noundef %t, i32 noundef %a_int, i32 noundef %x0, i32 noundef %p) #0 {
entry:
  %t.addr = alloca i64, align 8
  %a_int.addr = alloca i32, align 4
  %x0.addr = alloca i32, align 4
  %p.addr = alloca i32, align 4
  %xp = alloca ptr, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %q = alloca i64, align 8
  %a = alloca i64, align 8
  %i = alloca i32, align 4
  %d = alloca i64, align 8
  %j = alloca i32, align 4
  %tmp = alloca i64, align 8
  %jj = alloca i32, align 4
  store i64 %t, ptr %t.addr, align 8
  store i32 %a_int, ptr %a_int.addr, align 4
  store i32 %x0, ptr %x0.addr, align 4
  store i32 %p, ptr %p.addr, align 4
  store ptr @factab, ptr %xp, align 8
  store i64 1, ptr %q, align 8
  %0 = load i32, ptr %a_int.addr, align 4
  %conv = sext i32 %0 to i64
  store i64 %conv, ptr %a, align 8
  store i32 1, ptr %j, align 4
  store i32 0, ptr %jj, align 4
  %1 = load i32, ptr %x0.addr, align 4
  %conv1 = sext i32 %1 to i64
  store i64 %conv1, ptr %x, align 8
  %2 = load i32, ptr %x0.addr, align 4
  %conv2 = sext i32 %2 to i64
  store i64 %conv2, ptr %y, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %3, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, ptr %x, align 8
  %5 = load i32, ptr %p.addr, align 4
  %6 = load i64, ptr %t.addr, align 8
  %call = call i64 @powmod_ll(i64 noundef %4, i32 noundef %5, i64 noundef %6)
  %7 = load i64, ptr %a, align 8
  %add = add i64 %call, %7
  store i64 %add, ptr %x, align 8
  %8 = load i64, ptr %y, align 8
  %9 = load i32, ptr %p.addr, align 4
  %10 = load i64, ptr %t.addr, align 8
  %call4 = call i64 @powmod_ll(i64 noundef %8, i32 noundef %9, i64 noundef %10)
  %11 = load i64, ptr %a, align 8
  %add5 = add i64 %call4, %11
  store i64 %add5, ptr %y, align 8
  %12 = load i64, ptr %y, align 8
  %13 = load i32, ptr %p.addr, align 4
  %14 = load i64, ptr %t.addr, align 8
  %call6 = call i64 @powmod_ll(i64 noundef %12, i32 noundef %13, i64 noundef %14)
  %15 = load i64, ptr %a, align 8
  %add7 = add i64 %call6, %15
  store i64 %add7, ptr %y, align 8
  %16 = load i64, ptr %x, align 8
  %17 = load i64, ptr %y, align 8
  %cmp8 = icmp ugt i64 %16, %17
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %18 = load i64, ptr %x, align 8
  %19 = load i64, ptr %y, align 8
  %sub = sub i64 %18, %19
  store i64 %sub, ptr %tmp, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %20 = load i64, ptr %y, align 8
  %21 = load i64, ptr %x, align 8
  %sub10 = sub i64 %20, %21
  store i64 %sub10, ptr %tmp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load i64, ptr %q, align 8
  %23 = load i64, ptr %tmp, align 8
  %mul = mul i64 %22, %23
  %24 = load i64, ptr %t.addr, align 8
  %rem = urem i64 %mul, %24
  store i64 %rem, ptr %q, align 8
  %25 = load i32, ptr %i, align 4
  %26 = load i32, ptr %j, align 4
  %cmp11 = icmp eq i32 %25, %26
  br i1 %cmp11, label %if.then13, label %if.end25

if.then13:                                        ; preds = %if.end
  %27 = load i32, ptr %jj, align 4
  %add14 = add nsw i32 %27, 1
  store i32 %add14, ptr %jj, align 4
  %28 = load i32, ptr %jj, align 4
  %29 = load i32, ptr %j, align 4
  %add15 = add nsw i32 %29, %28
  store i32 %add15, ptr %j, align 4
  %30 = load i64, ptr %q, align 8
  %31 = load i64, ptr %t.addr, align 8
  %call16 = call i64 @gcd_ll(i64 noundef %30, i64 noundef %31)
  store i64 %call16, ptr %d, align 8
  %32 = load i64, ptr %d, align 8
  %cmp17 = icmp ne i64 %32, 1
  br i1 %cmp17, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.then13
  %33 = load i64, ptr %d, align 8
  %34 = load ptr, ptr %xp, align 8
  %incdec.ptr = getelementptr inbounds nuw i64, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %xp, align 8
  store i64 %33, ptr %34, align 8
  %35 = load i64, ptr %d, align 8
  %36 = load i64, ptr %t.addr, align 8
  %div = udiv i64 %36, %35
  store i64 %div, ptr %t.addr, align 8
  %37 = load i64, ptr %t.addr, align 8
  %cmp20 = icmp eq i64 %37, 1
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then19
  br label %for.end

if.end23:                                         ; preds = %if.then19
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then13
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end25
  %38 = load i32, ptr %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %if.then22, %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %t = alloca i64, align 8
  %x0 = alloca i32, align 4
  %a = alloca i32, align 4
  %p = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 27, ptr %p, align 4
  %0 = load i32, ptr %p, align 4
  %sh_prom = zext i32 %0 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub i64 %shl, 1
  store i64 %sub, ptr %t, align 8
  store i32 -1, ptr %a, align 4
  store i32 3, ptr %x0, align 4
  %1 = load i64, ptr %t, align 8
  %2 = load i32, ptr %a, align 4
  %3 = load i32, ptr %x0, align 4
  %4 = load i32, ptr %p, align 4
  call void @facts(i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %5 = load i64, ptr @factab, align 16
  %cmp = icmp ne i64 %5, 7
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @factab, i64 0, i64 1), align 8
  %cmp1 = icmp ne i64 %6, 73
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %7 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @factab, i64 0, i64 2), align 16
  %cmp3 = icmp ne i64 %7, 262657
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
