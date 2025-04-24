; 175292571137775476850770977181740577044
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/175292571137775476850770977181740577044.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/175292571137775476850770977181740577044.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@t = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %n, i32 noundef %f, ptr noundef %s, i32 noundef %m) #0 {
entry:
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
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = load i32, ptr %n.addr, align 4
  store i32 %0, ptr %x, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr @t, align 8
  %2 = load i32, ptr %x, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.S, ptr %1, i64 %idxprom
  %w = getelementptr inbounds nuw %struct.S, ptr %arrayidx, i32 0, i32 0
  %3 = load i32, ptr %w, align 4
  %4 = load i32, ptr %f.addr, align 4
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %m.addr, align 4
  %cmp1 = icmp slt i32 %5, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load ptr, ptr @t, align 8
  %9 = load i32, ptr %x, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds %struct.S, ptr %8, i64 %idxprom2
  %x4 = getelementptr inbounds nuw %struct.S, ptr %arrayidx3, i32 0, i32 1
  %10 = load i32, ptr %x4, align 4
  store i32 %10, ptr %x, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %12 = load i32, ptr %i, align 4
  %13 = load i32, ptr %m.addr, align 4
  %cmp5 = icmp eq i32 %12, %13
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %for.end
  %14 = load i32, ptr %i, align 4
  %add = add nsw i32 %14, 1
  store i32 %add, ptr %a, align 4
  %15 = load i32, ptr %n.addr, align 4
  store i32 %15, ptr %x, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc16, %if.end
  %16 = load i32, ptr %i, align 4
  %cmp7 = icmp sgt i32 %16, 0
  br i1 %cmp7, label %for.body8, label %for.end17

for.body8:                                        ; preds = %for.cond6
  %17 = load ptr, ptr @t, align 8
  %18 = load i32, ptr %x, align 4
  %idxprom9 = sext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds %struct.S, ptr %17, i64 %idxprom9
  %y = getelementptr inbounds nuw %struct.S, ptr %arrayidx10, i32 0, i32 2
  %19 = load i32, ptr %y, align 4
  %20 = load ptr, ptr %s.addr, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %21 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %20, i64 %idxprom11
  store i32 %19, ptr %arrayidx12, align 4
  %22 = load ptr, ptr @t, align 8
  %23 = load i32, ptr %x, align 4
  %idxprom13 = sext i32 %23 to i64
  %arrayidx14 = getelementptr inbounds %struct.S, ptr %22, i64 %idxprom13
  %x15 = getelementptr inbounds nuw %struct.S, ptr %arrayidx14, i32 0, i32 1
  %24 = load i32, ptr %x15, align 4
  store i32 %24, ptr %x, align 4
  br label %for.inc16

for.inc16:                                        ; preds = %for.body8
  %25 = load i32, ptr %i, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond6, !llvm.loop !8

for.end17:                                        ; preds = %for.cond6
  %26 = load i32, ptr %x, align 4
  %27 = load ptr, ptr %s.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %27, i64 0
  store i32 %26, ptr %arrayidx18, align 4
  %28 = load i32, ptr %a, align 4
  ret i32 %28
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [3 x i32], align 4
  %i = alloca i32, align 4
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
