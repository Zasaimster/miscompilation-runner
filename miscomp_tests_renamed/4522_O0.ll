; 116618826465011756398493503419348582306
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/116618826465011756398493503419348582306.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/116618826465011756398493503419348582306.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 1, align 4
@b = dso_local global i32 1, align 4
@c = dso_local global i32 1, align 4
@v = dso_local global i8 0, align 1
@.str = private unnamed_addr constant [3 x i8] c"AB\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %s.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %s.addr, align 8
  %1 = load i8, ptr %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %s.addr, align 8
  %3 = load i8, ptr %2, align 1
  store volatile i8 %3, ptr @v, align 1
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %s.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %add.ptr, ptr %s.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %g = alloca i32, align 4
  %h = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i16, align 2
  %x = alloca i16, align 2
  store i32 0, ptr %retval, align 4
  store volatile i32 1, ptr %d, align 4
  store volatile i32 1, ptr %e, align 4
  %0 = load i32, ptr @a, align 4
  %div = sdiv i32 1, %0
  store i32 %div, ptr %f, align 4
  %1 = load i32, ptr %f, align 4
  %cmp = icmp ult i32 1, %1
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %g, align 4
  %2 = load i32, ptr %g, align 4
  %add = add nsw i32 2, %2
  store i32 %add, ptr %h, align 4
  %3 = load i32, ptr %h, align 4
  %rem = srem i32 3, %3
  store i32 %rem, ptr %i, align 4
  %4 = load volatile i32, ptr %e, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %5 = load i32, ptr @b, align 4
  %tobool1 = icmp ne i32 %5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  store i32 %land.ext, ptr %j, align 4
  %7 = load i32, ptr @c, align 4
  %cmp2 = icmp eq i32 1, %7
  %conv3 = zext i1 %cmp2 to i32
  store i32 %conv3, ptr %k, align 4
  %8 = load volatile i32, ptr %d, align 4
  %cmp4 = icmp ne i32 %8, 0
  %conv5 = zext i1 %cmp4 to i32
  store i32 %conv5, ptr %l, align 4
  %9 = load i32, ptr %i, align 4
  %mul = mul nsw i32 -1, %9
  %10 = load i32, ptr %l, align 4
  %mul6 = mul nsw i32 %mul, %10
  %conv7 = trunc i32 %mul6 to i16
  store i16 %conv7, ptr %m, align 2
  %11 = load i32, ptr %j, align 4
  %12 = load i32, ptr %k, align 4
  %13 = load i16, ptr %m, align 2
  %conv8 = sext i16 %13 to i32
  %mul9 = mul nsw i32 %12, %conv8
  %mul10 = mul nsw i32 %11, %mul9
  %conv11 = trunc i32 %mul10 to i16
  store i16 %conv11, ptr %x, align 2
  %14 = load i32, ptr %i, align 4
  %cmp12 = icmp eq i32 %14, 1
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  call void @foo(ptr noundef @.str)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %15 = load i16, ptr %x, align 2
  %conv14 = sext i16 %15 to i32
  %cmp15 = icmp ne i32 %conv14, -1
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end
  call void @abort() #2
  unreachable

if.end18:                                         ; preds = %if.end
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
