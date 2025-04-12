; 148643927294423707306160096175849864005
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/148643927294423707306160096175849864005_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/148643927294423707306160096175849864005.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Count is completed.\0A\00", align 1
@t = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %n, i32 noundef %f, ptr noundef %s, i32 noundef %m) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %f.addr = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 %f, ptr %f.addr, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 %m, ptr %m.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %1 = load i32, ptr %n.addr, align 4
  store i32 %1, ptr %x, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load ptr, ptr @t, align 8
  %3 = load i32, ptr %x, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.S, ptr %2, i64 %idxprom
  %w = getelementptr inbounds nuw %struct.S, ptr %arrayidx, i32 0, i32 0
  %4 = load i32, ptr %w, align 4
  %5 = load i32, ptr %f.addr, align 4
  %cmp1 = icmp eq i32 %4, %5
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %m.addr, align 4
  %cmp2 = icmp slt i32 %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %9 = load ptr, ptr @t, align 8
  %10 = load i32, ptr %x, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds %struct.S, ptr %9, i64 %idxprom3
  %x5 = getelementptr inbounds nuw %struct.S, ptr %arrayidx4, i32 0, i32 1
  %11 = load i32, ptr %x5, align 4
  store i32 %11, ptr %x, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %m.addr, align 4
  %cmp6 = icmp eq i32 %13, %14
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.end
  call void @abort() #4
  unreachable

if.end8:                                          ; preds = %for.end
  %15 = load i32, ptr %i, align 4
  %add = add nsw i32 %15, 1
  store i32 %add, ptr %a, align 4
  %16 = load i32, ptr %n.addr, align 4
  store i32 %16, ptr %x, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc19, %if.end8
  %17 = load i32, ptr %i, align 4
  %cmp10 = icmp sgt i32 %17, 0
  br i1 %cmp10, label %for.body11, label %for.end20

for.body11:                                       ; preds = %for.cond9
  %18 = load ptr, ptr @t, align 8
  %19 = load i32, ptr %x, align 4
  %idxprom12 = sext i32 %19 to i64
  %arrayidx13 = getelementptr inbounds %struct.S, ptr %18, i64 %idxprom12
  %y = getelementptr inbounds nuw %struct.S, ptr %arrayidx13, i32 0, i32 2
  %20 = load i32, ptr %y, align 4
  %21 = load ptr, ptr %s.addr, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %22 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %21, i64 %idxprom14
  store i32 %20, ptr %arrayidx15, align 4
  %23 = load ptr, ptr @t, align 8
  %24 = load i32, ptr %x, align 4
  %idxprom16 = sext i32 %24 to i64
  %arrayidx17 = getelementptr inbounds %struct.S, ptr %23, i64 %idxprom16
  %x18 = getelementptr inbounds nuw %struct.S, ptr %arrayidx17, i32 0, i32 1
  %25 = load i32, ptr %x18, align 4
  store i32 %25, ptr %x, align 4
  br label %for.inc19

for.inc19:                                        ; preds = %for.body11
  %26 = load i32, ptr %i, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond9, !llvm.loop !8

for.end20:                                        ; preds = %for.cond9
  %27 = load i32, ptr %x, align 4
  %28 = load ptr, ptr %s.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %28, i64 0
  store i32 %27, ptr %arrayidx21, align 4
  %29 = load i32, ptr %a, align 4
  store i32 %29, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end20, %if.then
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [3 x i32], align 4
  %buf = alloca [3 x %struct.S], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.memset.p0.i64(ptr align 16 %buf, i8 0, i64 36, i1 false)
  %0 = getelementptr inbounds [3 x %struct.S], ptr %buf, i32 0, i32 0
  %1 = getelementptr inbounds %struct.S, ptr %0, i32 0, i32 0
  store i32 1, ptr %1, align 16
  %2 = getelementptr inbounds %struct.S, ptr %0, i32 0, i32 1
  store i32 1, ptr %2, align 4
  %3 = getelementptr inbounds %struct.S, ptr %0, i32 0, i32 2
  store i32 2, ptr %3, align 8
  %arraydecay = getelementptr inbounds [3 x %struct.S], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr @t, align 8
  %arraydecay1 = getelementptr inbounds [3 x i32], ptr %s, i64 0, i64 0
  %call = call i32 @foo(i32 noundef 0, i32 noundef 1, ptr noundef %arraydecay1, i32 noundef 3)
  %cmp = icmp ne i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [3 x i32], ptr %s, i64 0, i64 0
  %4 = load i32, ptr %arrayidx, align 4
  %cmp2 = icmp ne i32 %4, 1
  br i1 %cmp2, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx3 = getelementptr inbounds [3 x i32], ptr %s, i64 0, i64 1
  %5 = load i32, ptr %arrayidx3, align 4
  %cmp4 = icmp ne i32 %5, 2
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  call void @abort() #4
  unreachable

if.end6:                                          ; preds = %lor.lhs.false
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { noreturn nounwind }

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
