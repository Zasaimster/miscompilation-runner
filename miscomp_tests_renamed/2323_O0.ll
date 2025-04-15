; 148292316951426539598691224946318319768
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/148292316951426539598691224946318319768.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/148292316951426539598691224946318319768.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@b = dso_local global i8 0, align 1
@d = dso_local global i8 0, align 1
@c = dso_local global i16 0, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @fn1(i32 noundef %p1, i32 noundef %p2) #0 {
entry:
  %p1.addr = alloca i32, align 4
  %p2.addr = alloca i32, align 4
  store i32 %p1, ptr %p1.addr, align 4
  store i32 %p2, ptr %p2.addr, align 4
  %0 = load i32, ptr %p2.addr, align 4
  %cmp = icmp sge i32 %0, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr %p1.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, ptr %p1.addr, align 4
  %3 = load i32, ptr %p2.addr, align 4
  %cmp1 = icmp sgt i32 %2, %3
  %conv = zext i1 %cmp1 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %conv, %cond.false ]
  %conv2 = trunc i32 %cond to i16
  ret i16 %conv2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %e = alloca ptr, align 8
  %f = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store ptr @a, ptr %e, align 8
  store ptr @a, ptr %f, align 8
  store i8 1, ptr @b, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, ptr @b, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sle i32 %conv, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %e, align 8
  %2 = load i32, ptr %1, align 4
  %cmp2 = icmp ne i32 %2, 5
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body
  %3 = load i8, ptr @d, align 1
  %conv4 = sext i8 %3 to i32
  %tobool = icmp ne i32 %conv4, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body
  %4 = phi i1 [ true, %for.body ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  %conv5 = trunc i32 %lor.ext to i16
  store i16 %conv5, ptr @c, align 2
  %5 = load i16, ptr @c, align 2
  %conv6 = sext i16 %5 to i32
  %tobool7 = icmp ne i32 %conv6, 0
  br i1 %tobool7, label %lor.end11, label %lor.rhs8

lor.rhs8:                                         ; preds = %lor.end
  %6 = load i8, ptr @b, align 1
  %conv9 = sext i8 %6 to i32
  %tobool10 = icmp ne i32 %conv9, 0
  br label %lor.end11

lor.end11:                                        ; preds = %lor.rhs8, %lor.end
  %7 = phi i1 [ true, %lor.end ], [ %tobool10, %lor.rhs8 ]
  %lor.ext12 = zext i1 %7 to i32
  %8 = load i32, ptr @a, align 4
  %call = call signext i16 @fn1(i32 noundef %lor.ext12, i32 noundef %8)
  %conv13 = sext i16 %call to i32
  %9 = load ptr, ptr %f, align 8
  store i32 %conv13, ptr %9, align 4
  br label %for.inc

for.inc:                                          ; preds = %lor.end11
  %10 = load i8, ptr @b, align 1
  %inc = add i8 %10, 1
  store i8 %inc, ptr @b, align 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %11 = load i32, ptr @a, align 4
  %conv14 = sext i32 %11 to i64
  %cmp15 = icmp ne i64 %conv14, 1
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %for.end
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
