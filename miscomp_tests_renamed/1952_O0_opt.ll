; 121103092325393341089774801508875168987
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/121103092325393341089774801508875168987_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/121103092325393341089774801508875168987.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.C = type { [1 x %struct.B], i32, i32 }
%struct.B = type { i32, i32, i32, i32, i32 }
%struct.A = type { i16, i64 }

@.str = private unnamed_addr constant [15 x i8] c"X is negative\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(ptr noundef %x, ptr noundef %y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i64, align 8
  %d = alloca i32, align 4
  %e = alloca i64, align 8
  %f = alloca i64, align 8
  store ptr %x, ptr %x.addr, align 8
  store ptr %y, ptr %y.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %c3 = getelementptr inbounds nuw %struct.C, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %c3, align 4
  store i32 %1, ptr %a, align 4
  %2 = load ptr, ptr %y.addr, align 8
  %a1 = getelementptr inbounds nuw %struct.A, ptr %2, i32 0, i32 0
  %3 = load i16, ptr %a1, align 8
  %conv = zext i16 %3 to i32
  %shr = ashr i32 %conv, 9
  store i32 %shr, ptr %b, align 4
  %4 = load ptr, ptr %y.addr, align 8
  %a2 = getelementptr inbounds nuw %struct.A, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %a2, align 8
  store i64 %5, ptr %c, align 8
  %6 = load i32, ptr %a, align 4
  store i32 %6, ptr %d, align 4
  %7 = load i64, ptr %c, align 8
  %8 = load ptr, ptr %x.addr, align 8
  %c1 = getelementptr inbounds nuw %struct.C, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %d, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.B], ptr %c1, i64 0, i64 %idxprom
  %b4 = getelementptr inbounds nuw %struct.B, ptr %arrayidx, i32 0, i32 3
  %10 = load i32, ptr %b4, align 4
  %conv1 = sext i32 %10 to i64
  %sub = sub i64 %7, %conv1
  %conv2 = trunc i64 %sub to i32
  %call = call i32 @foo(i32 noundef %conv2)
  %conv3 = sext i32 %call to i64
  store i64 %conv3, ptr %f, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %11 = load i32, ptr %d, align 4
  %cmp = icmp sle i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %12 = load ptr, ptr %x.addr, align 8
  %c2 = getelementptr inbounds nuw %struct.C, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %c2, align 4
  store i32 %13, ptr %d, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %14 = load i32, ptr %d, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, ptr %d, align 4
  %15 = load i64, ptr %c, align 8
  %16 = load ptr, ptr %x.addr, align 8
  %c15 = getelementptr inbounds nuw %struct.C, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %d, align 4
  %idxprom6 = sext i32 %17 to i64
  %arrayidx7 = getelementptr inbounds [1 x %struct.B], ptr %c15, i64 0, i64 %idxprom6
  %b48 = getelementptr inbounds nuw %struct.B, ptr %arrayidx7, i32 0, i32 3
  %18 = load i32, ptr %b48, align 4
  %conv9 = sext i32 %18 to i64
  %sub10 = sub i64 %15, %conv9
  %conv11 = trunc i64 %sub10 to i32
  %call12 = call i32 @foo(i32 noundef %conv11)
  %conv13 = sext i32 %call12 to i64
  store i64 %conv13, ptr %e, align 8
  %19 = load i64, ptr %e, align 8
  %20 = load i64, ptr %f, align 8
  %cmp14 = icmp ult i64 %19, %20
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end
  %21 = load i32, ptr %d, align 4
  store i32 %21, ptr %a, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end17
  %22 = load i32, ptr %d, align 4
  %23 = load ptr, ptr %x.addr, align 8
  %c318 = getelementptr inbounds nuw %struct.C, ptr %23, i32 0, i32 2
  %24 = load i32, ptr %c318, align 4
  %cmp19 = icmp ne i32 %22, %24
  br i1 %cmp19, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %25 = load i64, ptr %c, align 8
  %26 = load i32, ptr %b, align 4
  %conv21 = sext i32 %26 to i64
  %add = add i64 %25, %conv21
  %conv22 = trunc i64 %add to i32
  %27 = load ptr, ptr %x.addr, align 8
  %c123 = getelementptr inbounds nuw %struct.C, ptr %27, i32 0, i32 0
  %28 = load i32, ptr %a, align 4
  %idxprom24 = sext i32 %28 to i64
  %arrayidx25 = getelementptr inbounds [1 x %struct.B], ptr %c123, i64 0, i64 %idxprom24
  %b426 = getelementptr inbounds nuw %struct.B, ptr %arrayidx25, i32 0, i32 3
  store i32 %conv22, ptr %b426, align 4
  %29 = load i32, ptr %a, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @foo(i32 noundef %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca %struct.A, align 8
  %b = alloca %struct.C, align 4
  %c = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %a1 = getelementptr inbounds nuw %struct.A, ptr %a, i32 0, i32 0
  store i16 512, ptr %a1, align 8
  %a2 = getelementptr inbounds nuw %struct.A, ptr %a, i32 0, i32 1
  store i64 4242, ptr %a2, align 8
  call void @llvm.memset.p0.i64(ptr align 4 %b, i8 0, i64 28, i1 false)
  %c1 = getelementptr inbounds nuw %struct.C, ptr %b, i32 0, i32 0
  %arrayidx = getelementptr inbounds [1 x %struct.B], ptr %c1, i64 0, i64 0
  %b3 = getelementptr inbounds nuw %struct.B, ptr %arrayidx, i32 0, i32 2
  store i32 424242, ptr %b3, align 4
  %c2 = getelementptr inbounds nuw %struct.C, ptr %b, i32 0, i32 1
  store i32 1, ptr %c2, align 4
  %call = call i32 @bar(ptr noundef %b, ptr noundef %a)
  store i32 %call, ptr %c, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
