; 124445071618788118933376455626047824760
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/124445071618788118933376455626047824760.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/124445071618788118933376455626047824760.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global i8 0, align 1
@e = internal global ptr @d, align 8
@a = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %g = alloca i32, align 4
  %h = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 -1, ptr %g, align 4
  %call = call i32 (...) @func4()
  store i8 4, ptr @c, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, ptr @c, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr @e, align 8
  store i32 1, ptr %1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i8, ptr @c, align 1
  %inc = add i8 %2, 1
  store i8 %inc, ptr @c, align 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %3 = load i32, ptr @a, align 4
  %cmp2 = icmp eq i32 %3, 0
  %conv3 = zext i1 %cmp2 to i32
  store i32 %conv3, ptr @f, align 4
  %4 = load i32, ptr @f, align 4
  %5 = load ptr, ptr @e, align 8
  %6 = load i32, ptr %5, align 4
  %xor = xor i32 %6, %4
  store i32 %xor, ptr %5, align 4
  %7 = load i32, ptr @d, align 4
  %not = xor i32 %7, -1
  store i32 %not, ptr %h, align 4
  %8 = load i32, ptr @d, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %9 = load i32, ptr %h, align 4
  store i32 %9, ptr @b, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %10 = load i32, ptr %h, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @exit(i32 noundef 0) #4
  unreachable

if.end6:                                          ; preds = %if.end
  call void @abort() #5
  unreachable
}

declare i32 @func4(...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }
attributes #5 = { noreturn nounwind }

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
