; 194254596738604262668145942099758530933
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/194254596738604262668145942099758530933.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/194254596738604262668145942099758530933.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32, i16 }

@b = dso_local global { i32, i8, i8, i8, i8, i16, [2 x i8] } { i32 30, i8 0, i8 -128, i8 2, i8 0, i16 0, [2 x i8] zeroinitializer }, align 4
@g = dso_local global { i32, i8, i8, i8, i8, i16, [2 x i8] } { i32 8, i8 0, i8 -128, i8 2, i8 0, i16 0, [2 x i8] zeroinitializer }, align 4
@h = dso_local global i32 8, align 4
@e = dso_local global <{ i8, [236 x i8] }> <{ i8 4, [236 x i8] zeroinitializer }>, align 16
@d = dso_local global i16 0, align 2
@f = dso_local global ptr @d, align 8
@i = dso_local global [5 x i16] [i16 3, i16 0, i16 0, i16 0, i16 0], align 2
@c = dso_local global i32 0, align 4
@k = dso_local global ptr @c, align 8
@a = dso_local global i32 0, align 4
@j = dso_local global i8 0, align 1
@l = dso_local global i16 0, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fn1(i32 noundef %p1) #0 {
entry:
  %p1.addr = alloca i32, align 4
  store i32 %p1, ptr %p1.addr, align 4
  %0 = load i32, ptr %p1.addr, align 4
  %sub = sub i32 0, %0
  ret i32 %sub
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fn2(i8 noundef signext %p1) #0 {
entry:
  %p1.addr = alloca i8, align 1
  store i8 %p1, ptr %p1.addr, align 1
  %0 = load i8, ptr %p1.addr, align 1
  %conv = sext i8 %0 to i32
  store i32 %conv, ptr @a, align 4
  %1 = load volatile i8, ptr @e, align 16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @fn3() #0 {
entry:
  %0 = load ptr, ptr @k, align 8
  store i32 4, ptr %0, align 4
  %1 = load ptr, ptr @f, align 8
  %2 = load i16, ptr %1, align 2
  ret i16 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store ptr getelementptr inbounds ([5 x i16], ptr @i, i64 0, i64 4), ptr %n, align 8
  %0 = load i32, ptr @h, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i8, ptr @j, align 1
  %conv = sext i8 %1 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  %bf.load = load i32, ptr getelementptr inbounds nuw (%struct.anon, ptr @b, i32 0, i32 1), align 4
  %bf.lshr = lshr i32 %bf.load, 15
  %bf.clear = and i32 %bf.lshr, 7
  %cmp = icmp sle i32 %land.ext, %bf.clear
  %conv2 = zext i1 %cmp to i32
  %call = call i32 @fn1(i32 noundef %conv2)
  store i32 %call, ptr %m, align 4
  %3 = load i32, ptr %m, align 4
  %bf.load3 = load i32, ptr getelementptr inbounds nuw (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %bf.clear4 = and i32 %bf.load3, 32767
  %cmp5 = icmp ugt i32 %3, %bf.clear4
  %conv6 = zext i1 %cmp5 to i32
  %conv7 = trunc i32 %conv6 to i16
  store i16 %conv7, ptr @l, align 2
  %4 = load ptr, ptr %n, align 8
  store i16 3, ptr %4, align 2
  %5 = load i32, ptr @b, align 4
  %shr = lshr i32 %5, 15
  %conv8 = trunc i32 %shr to i8
  call void @fn2(i8 noundef signext %conv8)
  %6 = load i32, ptr @a, align 4
  %and = and i32 %6, 255
  %cmp9 = icmp ne i32 %and, 255
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %land.end
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
