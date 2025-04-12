; 101901999590968751229609788094726776760
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/101901999590968751229609788094726776760_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/101901999590968751229609788094726776760.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bar = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @unusedFunction() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @baz2(ptr noundef %a) #0 {
entry:
  %a.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @baz3(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  ret i32 1
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(ptr noundef %a, i64 noundef %b, i32 noundef %c) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca i64, align 8
  %c.addr = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %i = alloca i32, align 4
  %g = alloca [256 x i8], align 16
  %h = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  store i64 %b, ptr %b.addr, align 8
  store i32 %c, ptr %c.addr, align 4
  store i32 0, ptr %d, align 4
  store i32 0, ptr %f, align 4
  %arrayidx = getelementptr inbounds [256 x i8], ptr %g, i64 0, i64 0
  store i8 10, ptr %arrayidx, align 16
  %arrayidx1 = getelementptr inbounds [256 x i8], ptr %g, i64 0, i64 1
  store i8 0, ptr %arrayidx1, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end68, %if.then57, %if.then48, %if.then39, %if.then30, %if.then18, %entry
  %0 = load ptr, ptr %a.addr, align 8
  %call = call i32 (ptr, ...) @baz1(ptr noundef %0)
  %conv = sext i32 %call to i64
  %1 = load i64, ptr %b.addr, align 8
  %cmp = icmp slt i64 %conv, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arrayidx3 = getelementptr inbounds [256 x i8], ptr %g, i64 0, i64 0
  %2 = load i8, ptr %arrayidx3, align 16
  %conv4 = sext i8 %2 to i32
  %cmp5 = icmp ne i32 %conv4, 32
  br i1 %cmp5, label %land.lhs.true, label %if.end68

land.lhs.true:                                    ; preds = %while.body
  %arrayidx7 = getelementptr inbounds [256 x i8], ptr %g, i64 0, i64 0
  %3 = load i8, ptr %arrayidx7, align 16
  %conv8 = sext i8 %3 to i32
  %cmp9 = icmp ne i32 %conv8, 9
  br i1 %cmp9, label %if.then, label %if.end68

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %f, align 4
  store i32 0, ptr %e, align 4
  %4 = load i32, ptr %d, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end19, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %if.then
  %arraydecay = getelementptr inbounds [256 x i8], ptr %g, i64 0, i64 0
  %call12 = call i32 @baz2(ptr noundef %arraydecay)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.end19

if.then15:                                        ; preds = %land.lhs.true11
  %5 = load i32, ptr %c.addr, align 4
  %and = and i32 %5, 16
  %cmp16 = icmp eq i32 %and, 0
  br i1 %cmp16, label %if.then18, label %if.end

if.then18:                                        ; preds = %if.then15
  br label %while.cond, !llvm.loop !6

if.end:                                           ; preds = %if.then15
  store i32 1, ptr %d, align 4
  store i32 1, ptr %e, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end, %land.lhs.true11, %if.then
  %6 = load i32, ptr %c.addr, align 4
  %and20 = and i32 %6, 16
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %land.lhs.true22, label %land.lhs.true27

land.lhs.true22:                                  ; preds = %if.end19
  %7 = load i32, ptr %c.addr, align 4
  %and23 = and i32 %7, 16384
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %land.lhs.true25, label %land.lhs.true27

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %8 = load i32, ptr %e, align 4
  %tobool26 = icmp ne i32 %8, 0
  br i1 %tobool26, label %if.end31, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %land.lhs.true25, %land.lhs.true22, %if.end19
  %9 = load i32, ptr %c.addr, align 4
  %and28 = and i32 %9, 2
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %land.lhs.true27
  br label %while.cond, !llvm.loop !6

if.end31:                                         ; preds = %land.lhs.true27, %land.lhs.true25
  %10 = load i32, ptr %c.addr, align 4
  %and32 = and i32 %10, 8192
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %land.lhs.true34, label %if.end40

land.lhs.true34:                                  ; preds = %if.end31
  %arraydecay35 = getelementptr inbounds [256 x i8], ptr %g, i64 0, i64 0
  %call36 = call i32 @baz2(ptr noundef %arraydecay35)
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %land.lhs.true34
  br label %while.cond, !llvm.loop !6

if.end40:                                         ; preds = %land.lhs.true34, %if.end31
  %11 = load i32, ptr %c.addr, align 4
  %and41 = and i32 %11, 5128
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %land.lhs.true43, label %if.end49

land.lhs.true43:                                  ; preds = %if.end40
  %arraydecay44 = getelementptr inbounds [256 x i8], ptr %g, i64 0, i64 0
  %call45 = call i32 @baz2(ptr noundef %arraydecay44)
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %land.lhs.true43
  br label %while.cond, !llvm.loop !6

if.end49:                                         ; preds = %land.lhs.true43, %if.end40
  %12 = load i32, ptr %c.addr, align 4
  %and50 = and i32 %12, 512
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true52, label %if.end58

land.lhs.true52:                                  ; preds = %if.end49
  %arraydecay53 = getelementptr inbounds [256 x i8], ptr %g, i64 0, i64 0
  %call54 = call i32 @baz2(ptr noundef %arraydecay53)
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %land.lhs.true52
  br label %while.cond, !llvm.loop !6

if.end58:                                         ; preds = %land.lhs.true52, %if.end49
  %13 = load i32, ptr %c.addr, align 4
  %and59 = and i32 %13, 128
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %if.then61, label %if.end67

if.then61:                                        ; preds = %if.end58
  %14 = load ptr, ptr @bar, align 8
  store ptr %14, ptr %h, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then61
  %15 = load ptr, ptr %h, align 8
  %tobool62 = icmp ne ptr %15, null
  br i1 %tobool62, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, ptr %i, align 4
  %call63 = call i32 @baz3(i32 noundef %16)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %for.body
  br label %for.end

if.end66:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end66
  %17 = load ptr, ptr %h, align 8
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %h, align 8
  %19 = load i32, ptr %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %if.then65, %for.cond
  br label %if.end67

if.end67:                                         ; preds = %for.end, %if.end58
  store i32 0, ptr %f, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %land.lhs.true, %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare i32 @baz1(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store ptr null, ptr %n, align 8
  store ptr %n, ptr @bar, align 8
  %call = call i32 @foo(ptr noundef %n, i64 noundef 1, i32 noundef 51217)
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { noreturn }

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
