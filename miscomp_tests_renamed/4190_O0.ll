; 173413006962467557464711768473749102247
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/173413006962467557464711768473749102247.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/173413006962467557464711768473749102247.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S1 = type { i8 }

@g_23 = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca %struct.S1, align 1
  store i32 0, ptr %retval, align 4
  %call = call i8 @foo()
  %coerce.dive = getelementptr inbounds nuw %struct.S1, ptr %s, i32 0, i32 0
  store i8 %call, ptr %coerce.dive, align 1
  %f0 = getelementptr inbounds nuw %struct.S1, ptr %s, i32 0, i32 0
  %0 = load i8, ptr %f0, align 1
  %conv = sext i8 %0 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ true, %land.rhs ]
  %land.ext = zext i1 %1 to i32
  %xor = xor i32 153, %land.ext
  %conv1 = trunc i32 %xor to i8
  %call2 = call signext i8 @bar(i8 noundef signext %conv1, i8 noundef signext 1)
  %conv3 = sext i8 %call2 to i32
  %cmp = icmp ne i32 %conv3, -104
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %land.end
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i8 @foo() #0 {
entry:
  %retval = alloca %struct.S1, align 1
  %l_100 = alloca ptr, align 8
  %l_110 = alloca ptr, align 8
  store ptr @g_23, ptr %l_100, align 8
  store ptr %l_100, ptr %l_110, align 8
  %f0 = getelementptr inbounds nuw %struct.S1, ptr %retval, i32 0, i32 0
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %conv = trunc i32 %call to i8
  store i8 %conv, ptr %f0, align 1
  %0 = load ptr, ptr %l_100, align 8
  %cmp = icmp eq ptr %0, @g_23
  %conv1 = zext i1 %cmp to i32
  %call2 = call i32 (i32, ...) @assert(i32 noundef %conv1)
  %1 = load ptr, ptr %l_100, align 8
  %cmp3 = icmp eq ptr %1, @g_23
  %conv4 = zext i1 %cmp3 to i32
  %call5 = call i32 (i32, ...) @assert(i32 noundef %conv4)
  %2 = load ptr, ptr %l_100, align 8
  %cmp6 = icmp eq ptr %2, @g_23
  %conv7 = zext i1 %cmp6 to i32
  %call8 = call i32 (i32, ...) @assert(i32 noundef %conv7)
  %3 = load ptr, ptr %l_100, align 8
  %cmp9 = icmp eq ptr %3, @g_23
  %conv10 = zext i1 %cmp9 to i32
  %call11 = call i32 (i32, ...) @assert(i32 noundef %conv10)
  %4 = load ptr, ptr %l_100, align 8
  %cmp12 = icmp eq ptr %4, @g_23
  %conv13 = zext i1 %cmp12 to i32
  %call14 = call i32 (i32, ...) @assert(i32 noundef %conv13)
  %5 = load ptr, ptr %l_100, align 8
  %cmp15 = icmp eq ptr %5, @g_23
  %conv16 = zext i1 %cmp15 to i32
  %call17 = call i32 (i32, ...) @assert(i32 noundef %conv16)
  %6 = load ptr, ptr %l_100, align 8
  %cmp18 = icmp eq ptr %6, @g_23
  %conv19 = zext i1 %cmp18 to i32
  %call20 = call i32 (i32, ...) @assert(i32 noundef %conv19)
  %coerce.dive = getelementptr inbounds nuw %struct.S1, ptr %retval, i32 0, i32 0
  %7 = load i8, ptr %coerce.dive, align 1
  ret i8 %7
}

; Function Attrs: noinline nounwind uwtable
define internal signext i8 @bar(i8 noundef signext %si1, i8 noundef signext %si2) #0 {
entry:
  %si1.addr = alloca i8, align 1
  %si2.addr = alloca i8, align 1
  store i8 %si1, ptr %si1.addr, align 1
  store i8 %si2, ptr %si2.addr, align 1
  %0 = load i8, ptr %si1.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sle i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8, ptr %si1.addr, align 1
  %conv2 = sext i8 %1 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i8, ptr %si2.addr, align 1
  %conv3 = sext i8 %2 to i32
  %mul = mul nsw i32 %conv3, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv2, %cond.true ], [ %mul, %cond.false ]
  %conv4 = trunc i32 %cond to i8
  ret i8 %conv4
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

declare i32 @printf(ptr noundef, ...) #2

declare i32 @assert(...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
