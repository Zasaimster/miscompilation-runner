; 153488166926819766239819546637386384918
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/153488166926819766239819546637386384918.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/153488166926819766239819546637386384918.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@baz1.l = internal global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Main function executed.\0A\00", align 1
@bar = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @baz1(ptr noundef %a) #0 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = load i64, ptr %retval, align 8
  ret i64 %0
}

declare i32 @printf(ptr noundef, ...) #1

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
declare void @abort() #2

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

while.cond:                                       ; preds = %if.end66, %if.then55, %if.then46, %if.then37, %if.then28, %if.then16, %entry
  %0 = load ptr, ptr %a.addr, align 8
  %call = call i64 @baz1(ptr noundef %0)
  %1 = load i64, ptr %b.addr, align 8
  %cmp = icmp slt i64 %call, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arrayidx2 = getelementptr inbounds [256 x i8], ptr %g, i64 0, i64 0
  %2 = load i8, ptr %arrayidx2, align 16
  %conv = sext i8 %2 to i32
  %cmp3 = icmp ne i32 %conv, 32
  br i1 %cmp3, label %land.lhs.true, label %if.end66

land.lhs.true:                                    ; preds = %while.body
  %arrayidx5 = getelementptr inbounds [256 x i8], ptr %g, i64 0, i64 0
  %3 = load i8, ptr %arrayidx5, align 16
  %conv6 = sext i8 %3 to i32
  %cmp7 = icmp ne i32 %conv6, 9
  br i1 %cmp7, label %if.then, label %if.end66

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %f, align 4
  store i32 0, ptr %e, align 4
  %4 = load i32, ptr %d, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end17, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.then
  %arraydecay = getelementptr inbounds [256 x i8], ptr %g, i64 0, i64 0
  %call10 = call i32 @baz2(ptr noundef %arraydecay)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end17

if.then13:                                        ; preds = %land.lhs.true9
  %5 = load i32, ptr %c.addr, align 4
  %and = and i32 %5, 16
  %cmp14 = icmp eq i32 %and, 0
  br i1 %cmp14, label %if.then16, label %if.end

if.then16:                                        ; preds = %if.then13
  br label %while.cond, !llvm.loop !6

if.end:                                           ; preds = %if.then13
  store i32 1, ptr %d, align 4
  store i32 1, ptr %e, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end, %land.lhs.true9, %if.then
  %6 = load i32, ptr %c.addr, align 4
  %and18 = and i32 %6, 16
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true20, label %land.lhs.true25

land.lhs.true20:                                  ; preds = %if.end17
  %7 = load i32, ptr %c.addr, align 4
  %and21 = and i32 %7, 16384
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %land.lhs.true23, label %land.lhs.true25

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %8 = load i32, ptr %e, align 4
  %tobool24 = icmp ne i32 %8, 0
  br i1 %tobool24, label %if.end29, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true23, %land.lhs.true20, %if.end17
  %9 = load i32, ptr %c.addr, align 4
  %and26 = and i32 %9, 2
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %land.lhs.true25
  br label %while.cond, !llvm.loop !6

if.end29:                                         ; preds = %land.lhs.true25, %land.lhs.true23
  %10 = load i32, ptr %c.addr, align 4
  %and30 = and i32 %10, 8192
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %land.lhs.true32, label %if.end38

land.lhs.true32:                                  ; preds = %if.end29
  %arraydecay33 = getelementptr inbounds [256 x i8], ptr %g, i64 0, i64 0
  %call34 = call i32 @baz2(ptr noundef %arraydecay33)
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %land.lhs.true32
  br label %while.cond, !llvm.loop !6

if.end38:                                         ; preds = %land.lhs.true32, %if.end29
  %11 = load i32, ptr %c.addr, align 4
  %and39 = and i32 %11, 5128
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %land.lhs.true41, label %if.end47

land.lhs.true41:                                  ; preds = %if.end38
  %arraydecay42 = getelementptr inbounds [256 x i8], ptr %g, i64 0, i64 0
  %call43 = call i32 @baz2(ptr noundef %arraydecay42)
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %land.lhs.true41
  br label %while.cond, !llvm.loop !6

if.end47:                                         ; preds = %land.lhs.true41, %if.end38
  %12 = load i32, ptr %c.addr, align 4
  %and48 = and i32 %12, 512
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %land.lhs.true50, label %if.end56

land.lhs.true50:                                  ; preds = %if.end47
  %arraydecay51 = getelementptr inbounds [256 x i8], ptr %g, i64 0, i64 0
  %call52 = call i32 @baz2(ptr noundef %arraydecay51)
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %land.lhs.true50
  br label %while.cond, !llvm.loop !6

if.end56:                                         ; preds = %land.lhs.true50, %if.end47
  %13 = load i32, ptr %c.addr, align 4
  %and57 = and i32 %13, 128
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %if.then59, label %if.end65

if.then59:                                        ; preds = %if.end56
  %14 = load ptr, ptr @bar, align 8
  store ptr %14, ptr %h, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then59
  %15 = load ptr, ptr %h, align 8
  %tobool60 = icmp ne ptr %15, null
  br i1 %tobool60, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, ptr %i, align 4
  %call61 = call i32 @baz3(i32 noundef %16)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %for.body
  br label %for.end

if.end64:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end64
  %17 = load ptr, ptr %h, align 8
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %h, align 8
  %19 = load i32, ptr %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %if.then63, %for.cond
  br label %if.end65

if.end65:                                         ; preds = %for.end, %if.end56
  store i32 0, ptr %f, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %land.lhs.true, %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret i32 0
}

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
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
