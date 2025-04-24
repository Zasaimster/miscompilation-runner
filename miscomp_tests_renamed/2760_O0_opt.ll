; 148298791180721920680817090548519575483
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/148298791180721920680817090548519575483_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/148298791180721920680817090548519575483.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = internal global i32 1, align 4
@a = internal global i32 1, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @foo(i8 noundef zeroext 1, i32 noundef 1)
  call void @foo(i8 noundef zeroext -1, i32 noundef 1)
  %0 = load i32, ptr @b, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @foo(i8 noundef zeroext %x, i32 noundef %y) #0 {
entry:
  %x.addr = alloca i8, align 1
  %y.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  store i8 %x, ptr %x.addr, align 1
  store i32 %y, ptr %y.addr, align 4
  %0 = load i32, ptr %y.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %x.addr, align 1
  %conv = zext i8 %1 to i32
  %sub = sub nsw i32 %conv, 2
  %div = udiv i32 28672, %sub
  %2 = load i32, ptr @a, align 4
  %xor = xor i32 %div, %2
  store i32 %xor, ptr %c, align 4
  %3 = load i32, ptr @a, align 4
  %4 = load i32, ptr @a, align 4
  %call = call i32 @bar(i32 noundef %3, i32 noundef %4)
  store i32 %call, ptr %d, align 4
  %5 = load i32, ptr @a, align 4
  %6 = load i32, ptr %d, align 4
  %sub1 = sub i32 %5, %6
  %tobool2 = icmp ne i32 %sub1, 0
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %7 = load i32, ptr @a, align 4
  %sub3 = sub i32 %7, 1
  %tobool4 = icmp ne i32 %sub3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %8 = phi i1 [ false, %if.end ], [ %tobool4, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  %9 = load i32, ptr %c, align 4
  %add = add i32 %land.ext, %9
  %10 = load i32, ptr @b, align 4
  %and = and i32 %10, %add
  store i32 %and, ptr @b, align 4
  br label %return

return:                                           ; preds = %land.end, %if.then
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @bar(i32 noundef %x, i32 noundef %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  ret i32 0
}

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
