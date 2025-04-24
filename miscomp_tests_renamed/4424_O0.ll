; 177747232297638109930261365067337472169
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/177747232297638109930261365067337472169.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/177747232297638109930261365067337472169.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i64, i64, i64, i64 }

@x = dso_local global %struct.A { i64 13, i64 14, i64 15, i64 16 }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @square(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %0, %1
  ret i32 %mul
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noundef %x, i32 noundef %y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8
  store i32 %y, ptr %y.addr, align 4
  %0 = load i32, ptr %y.addr, align 4
  %cmp = icmp ne i32 %0, 12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %x.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %1, i64 0
  %2 = load i64, ptr %arrayidx, align 8
  %cmp1 = icmp ne i64 %2, 1
  br i1 %cmp1, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load ptr, ptr %x.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %3, i64 1
  %4 = load i64, ptr %arrayidx2, align 8
  %cmp3 = icmp ne i64 %4, 11
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  call void @abort() #3
  unreachable

if.end5:                                          ; preds = %lor.lhs.false
  %5 = load ptr, ptr %x.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %5, i64 2
  %6 = load i64, ptr %arrayidx6, align 8
  %cmp7 = icmp ne i64 %6, 2
  br i1 %cmp7, label %if.then11, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.end5
  %7 = load ptr, ptr %x.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %7, i64 3
  %8 = load i64, ptr %arrayidx9, align 8
  %cmp10 = icmp ne i64 %8, 12
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false8, %if.end5
  call void @abort() #3
  unreachable

if.end12:                                         ; preds = %lor.lhs.false8
  %9 = load ptr, ptr %x.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %9, i64 4
  %10 = load i64, ptr %arrayidx13, align 8
  %cmp14 = icmp ne i64 %10, 3
  br i1 %cmp14, label %if.then18, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %if.end12
  %11 = load ptr, ptr %x.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %11, i64 5
  %12 = load i64, ptr %arrayidx16, align 8
  %cmp17 = icmp ne i64 %12, 13
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false15, %if.end12
  call void @abort() #3
  unreachable

if.end19:                                         ; preds = %lor.lhs.false15
  %13 = load ptr, ptr %x.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %13, i64 6
  %14 = load i64, ptr %arrayidx20, align 8
  %cmp21 = icmp ne i64 %14, 4
  br i1 %cmp21, label %if.then25, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.end19
  %15 = load ptr, ptr %x.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %15, i64 7
  %16 = load i64, ptr %arrayidx23, align 8
  %cmp24 = icmp ne i64 %16, 14
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %lor.lhs.false22, %if.end19
  call void @abort() #3
  unreachable

if.end26:                                         ; preds = %lor.lhs.false22
  %17 = load ptr, ptr %x.addr, align 8
  %arrayidx27 = getelementptr inbounds i64, ptr %17, i64 8
  %18 = load i64, ptr %arrayidx27, align 8
  %cmp28 = icmp ne i64 %18, 5
  br i1 %cmp28, label %if.then32, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.end26
  %19 = load ptr, ptr %x.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %19, i64 9
  %20 = load i64, ptr %arrayidx30, align 8
  %cmp31 = icmp ne i64 %20, 15
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %lor.lhs.false29, %if.end26
  call void @abort() #3
  unreachable

if.end33:                                         ; preds = %lor.lhs.false29
  %21 = load ptr, ptr %x.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %21, i64 10
  %22 = load i64, ptr %arrayidx34, align 8
  %cmp35 = icmp ne i64 %22, 6
  br i1 %cmp35, label %if.then39, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %if.end33
  %23 = load ptr, ptr %x.addr, align 8
  %arrayidx37 = getelementptr inbounds i64, ptr %23, i64 11
  %24 = load i64, ptr %arrayidx37, align 8
  %cmp38 = icmp ne i64 %24, 16
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %lor.lhs.false36, %if.end33
  call void @abort() #3
  unreachable

if.end40:                                         ; preds = %lor.lhs.false36
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [40 x i64], align 16
  %b = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %b, align 4
  %0 = load i32, ptr %b, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %b, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [40 x i64], ptr %a, i64 0, i64 %idxprom
  store i64 1, ptr %arrayidx, align 8
  %1 = load i32, ptr %b, align 4
  %inc1 = add nsw i32 %1, 1
  store i32 %inc1, ptr %b, align 4
  %idxprom2 = sext i32 %1 to i64
  %arrayidx3 = getelementptr inbounds [40 x i64], ptr %a, i64 0, i64 %idxprom2
  store i64 11, ptr %arrayidx3, align 8
  %2 = load i32, ptr %b, align 4
  %inc4 = add nsw i32 %2, 1
  store i32 %inc4, ptr %b, align 4
  %idxprom5 = sext i32 %2 to i64
  %arrayidx6 = getelementptr inbounds [40 x i64], ptr %a, i64 0, i64 %idxprom5
  store i64 2, ptr %arrayidx6, align 8
  %3 = load i32, ptr %b, align 4
  %inc7 = add nsw i32 %3, 1
  store i32 %inc7, ptr %b, align 4
  %idxprom8 = sext i32 %3 to i64
  %arrayidx9 = getelementptr inbounds [40 x i64], ptr %a, i64 0, i64 %idxprom8
  store i64 12, ptr %arrayidx9, align 8
  %4 = load i32, ptr %b, align 4
  %inc10 = add nsw i32 %4, 1
  store i32 %inc10, ptr %b, align 4
  %idxprom11 = sext i32 %4 to i64
  %arrayidx12 = getelementptr inbounds [40 x i64], ptr %a, i64 0, i64 %idxprom11
  store i64 3, ptr %arrayidx12, align 8
  %call = call ptr @bar()
  %p = getelementptr inbounds nuw %struct.A, ptr %call, i32 0, i32 0
  %5 = load i64, ptr %p, align 8
  %6 = load i32, ptr %b, align 4
  %inc13 = add nsw i32 %6, 1
  store i32 %inc13, ptr %b, align 4
  %idxprom14 = sext i32 %6 to i64
  %arrayidx15 = getelementptr inbounds [40 x i64], ptr %a, i64 0, i64 %idxprom14
  store i64 %5, ptr %arrayidx15, align 8
  %7 = load i32, ptr %b, align 4
  %inc16 = add nsw i32 %7, 1
  store i32 %inc16, ptr %b, align 4
  %idxprom17 = sext i32 %7 to i64
  %arrayidx18 = getelementptr inbounds [40 x i64], ptr %a, i64 0, i64 %idxprom17
  store i64 4, ptr %arrayidx18, align 8
  %call19 = call ptr @bar()
  %q = getelementptr inbounds nuw %struct.A, ptr %call19, i32 0, i32 1
  %8 = load i64, ptr %q, align 8
  %9 = load i32, ptr %b, align 4
  %inc20 = add nsw i32 %9, 1
  store i32 %inc20, ptr %b, align 4
  %idxprom21 = sext i32 %9 to i64
  %arrayidx22 = getelementptr inbounds [40 x i64], ptr %a, i64 0, i64 %idxprom21
  store i64 %8, ptr %arrayidx22, align 8
  %10 = load i32, ptr %b, align 4
  %inc23 = add nsw i32 %10, 1
  store i32 %inc23, ptr %b, align 4
  %idxprom24 = sext i32 %10 to i64
  %arrayidx25 = getelementptr inbounds [40 x i64], ptr %a, i64 0, i64 %idxprom24
  store i64 5, ptr %arrayidx25, align 8
  %call26 = call ptr @bar()
  %r = getelementptr inbounds nuw %struct.A, ptr %call26, i32 0, i32 2
  %11 = load i64, ptr %r, align 8
  %12 = load i32, ptr %b, align 4
  %inc27 = add nsw i32 %12, 1
  store i32 %inc27, ptr %b, align 4
  %idxprom28 = sext i32 %12 to i64
  %arrayidx29 = getelementptr inbounds [40 x i64], ptr %a, i64 0, i64 %idxprom28
  store i64 %11, ptr %arrayidx29, align 8
  %13 = load i32, ptr %b, align 4
  %inc30 = add nsw i32 %13, 1
  store i32 %inc30, ptr %b, align 4
  %idxprom31 = sext i32 %13 to i64
  %arrayidx32 = getelementptr inbounds [40 x i64], ptr %a, i64 0, i64 %idxprom31
  store i64 6, ptr %arrayidx32, align 8
  %call33 = call ptr @bar()
  %s = getelementptr inbounds nuw %struct.A, ptr %call33, i32 0, i32 3
  %14 = load i64, ptr %s, align 8
  %15 = load i32, ptr %b, align 4
  %inc34 = add nsw i32 %15, 1
  store i32 %inc34, ptr %b, align 4
  %idxprom35 = sext i32 %15 to i64
  %arrayidx36 = getelementptr inbounds [40 x i64], ptr %a, i64 0, i64 %idxprom35
  store i64 %14, ptr %arrayidx36, align 8
  %arraydecay = getelementptr inbounds [40 x i64], ptr %a, i64 0, i64 0
  %16 = load i32, ptr %b, align 4
  call void @foo(ptr noundef %arraydecay, i32 noundef %16)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @bar() #0 {
entry:
  %r = alloca ptr, align 8
  store ptr @x, ptr %r, align 8
  %0 = load ptr, ptr %r, align 8
  ret ptr %0
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
