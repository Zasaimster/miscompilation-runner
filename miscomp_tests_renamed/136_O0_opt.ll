; 137013174711197657023837225017592787593
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/137013174711197657023837225017592787593_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/137013174711197657023837225017592787593.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S1 = type { i8 }

@g_23 = dso_local global i32 0, align 4
@__const.foo.l_128 = private unnamed_addr constant %struct.S1 { i8 1 }, align 1
@.str = private unnamed_addr constant [13 x i8] c"Hello World\0A\00", align 1

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
  call void @abort() #4
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
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %retval, ptr align 1 @__const.foo.l_128, i64 1, i1 false)
  %0 = load ptr, ptr %l_100, align 8
  %cmp = icmp eq ptr %0, @g_23
  %conv = zext i1 %cmp to i32
  %call = call i32 (i32, ...) @assert(i32 noundef %conv)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %1 = load ptr, ptr %l_100, align 8
  %cmp2 = icmp eq ptr %1, @g_23
  %conv3 = zext i1 %cmp2 to i32
  %call4 = call i32 (i32, ...) @assert(i32 noundef %conv3)
  %2 = load ptr, ptr %l_100, align 8
  %cmp5 = icmp eq ptr %2, @g_23
  %conv6 = zext i1 %cmp5 to i32
  %call7 = call i32 (i32, ...) @assert(i32 noundef %conv6)
  %3 = load ptr, ptr %l_100, align 8
  %cmp8 = icmp eq ptr %3, @g_23
  %conv9 = zext i1 %cmp8 to i32
  %call10 = call i32 (i32, ...) @assert(i32 noundef %conv9)
  %4 = load ptr, ptr %l_100, align 8
  %cmp11 = icmp eq ptr %4, @g_23
  %conv12 = zext i1 %cmp11 to i32
  %call13 = call i32 (i32, ...) @assert(i32 noundef %conv12)
  %5 = load ptr, ptr %l_100, align 8
  %cmp14 = icmp eq ptr %5, @g_23
  %conv15 = zext i1 %cmp14 to i32
  %call16 = call i32 (i32, ...) @assert(i32 noundef %conv15)
  %6 = load ptr, ptr %l_100, align 8
  %cmp17 = icmp eq ptr %6, @g_23
  %conv18 = zext i1 %cmp17 to i32
  %call19 = call i32 (i32, ...) @assert(i32 noundef %conv18)
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @assert(...) #3

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
