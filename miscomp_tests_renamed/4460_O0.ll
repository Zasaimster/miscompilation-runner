; 195236469969745413464470108673318886117
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/195236469969745413464470108673318886117.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/195236469969745413464470108673318886117.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %e = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  %0 = load i32, ptr @a, align 4
  %cmp = icmp eq i32 %0, 0
  %conv = zext i1 %cmp to i32
  %call = call i32 @foo(i32 noundef %conv, i16 noundef signext -30000)
  store i32 %call, ptr @d, align 4
  %1 = load i32, ptr @d, align 4
  %rem = srem i32 %1, 14
  %conv1 = trunc i32 %rem to i8
  store i8 %conv1, ptr %e, align 1
  %2 = load i8, ptr %e, align 1
  %conv2 = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv2, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr @c, align 4
  %tobool3 = icmp ne i32 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool3, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  store volatile i32 %land.ext, ptr @b, align 4
  %5 = load volatile i32, ptr @b, align 4
  %cmp4 = icmp ne i32 %5, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %land.end
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @foo(i32 noundef %p1, i16 noundef signext %p2) #0 {
entry:
  %p1.addr = alloca i32, align 4
  %p2.addr = alloca i16, align 2
  store i32 %p1, ptr %p1.addr, align 4
  store i16 %p2, ptr %p2.addr, align 2
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
