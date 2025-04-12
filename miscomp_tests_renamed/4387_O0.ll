; 165032595752991546362664041298529376374
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/165032595752991546362664041298529376374.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/165032595752991546362664041298529376374.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Value of z: %d\0A\00", align 1
@__const.main.ar = private unnamed_addr constant [5 x i32] [i32 10, i32 11, i32 12, i32 13, i32 14], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g(ptr noundef %v, i32 noundef %n, ptr noundef %a, i32 noundef %b) #0 {
entry:
  %v.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca i32, align 4
  %cnt = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %a, ptr %a.addr, align 8
  store i32 %b, ptr %b.addr, align 4
  %0 = load ptr, ptr %v.addr, align 8
  store i64 0, ptr %0, align 8
  store i32 0, ptr %cnt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %cnt, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %1)
  %2 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %call, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %v.addr, align 8
  %4 = load i64, ptr %3, align 8
  %5 = load i32, ptr %b.addr, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 %4, %conv
  %6 = load ptr, ptr %a.addr, align 8
  %7 = load i32, ptr %cnt, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, ptr %6, i64 %idxprom
  %8 = load i32, ptr %arrayidx, align 4
  %conv1 = zext i32 %8 to i64
  %add = add i64 %mul, %conv1
  %9 = load ptr, ptr %v.addr, align 8
  store i64 %add, ptr %9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %cnt, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %cnt, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %11 = load i32, ptr %n.addr, align 4
  ret i32 %11
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %res = alloca i32, align 4
  %ar = alloca [5 x i32], align 16
  %v = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %ar, ptr align 16 @__const.main.ar, i64 20, i1 false)
  %arraydecay = getelementptr inbounds [5 x i32], ptr %ar, i64 0, i64 0
  %call = call i32 @g(ptr noundef %v, i32 noundef 5, ptr noundef %arraydecay, i32 noundef 16)
  store i32 %call, ptr %res, align 4
  %0 = load i64, ptr %v, align 8
  %cmp = icmp ne i64 %0, 703710
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { noreturn }

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
