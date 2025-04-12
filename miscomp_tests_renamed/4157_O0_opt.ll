; 114018134283714570791789334593302710899
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/114018134283714570791789334593302710899_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/114018134283714570791789334593302710899.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cx = dso_local global i8 7, align 1
@sx = dso_local global i16 14, align 2
@ix = dso_local global i32 21, align 4
@lx = dso_local global i64 28, align 8
@Lx = dso_local global i64 35, align 8
@.str = private unnamed_addr constant [10 x i8] c"a is: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %cy = alloca i8, align 1
  %sy = alloca i16, align 2
  %iy = alloca i32, align 4
  %ly = alloca i64, align 8
  %Ly = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  %0 = load i8, ptr @cx, align 1
  %conv = zext i8 %0 to i32
  %div = sdiv i32 %conv, 6
  %conv1 = trunc i32 %div to i8
  store i8 %conv1, ptr %cy, align 1
  %1 = load i8, ptr %cy, align 1
  %conv2 = zext i8 %1 to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv2)
  %2 = load i8, ptr %cy, align 1
  %conv3 = zext i8 %2 to i32
  %cmp = icmp ne i32 %conv3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i8, ptr @cx, align 1
  %conv5 = zext i8 %3 to i32
  %rem = srem i32 %conv5, 6
  %conv6 = trunc i32 %rem to i8
  store i8 %conv6, ptr %cy, align 1
  %4 = load i8, ptr %cy, align 1
  %conv7 = zext i8 %4 to i32
  %cmp8 = icmp ne i32 %conv7, 1
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  call void @abort() #4
  unreachable

if.end11:                                         ; preds = %if.end
  %5 = load i16, ptr @sx, align 2
  %conv12 = zext i16 %5 to i32
  %div13 = sdiv i32 %conv12, 6
  %conv14 = trunc i32 %div13 to i16
  store i16 %conv14, ptr %sy, align 2
  %6 = load i16, ptr %sy, align 2
  %conv15 = zext i16 %6 to i32
  %cmp16 = icmp ne i32 %conv15, 2
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end11
  call void @abort() #4
  unreachable

if.end19:                                         ; preds = %if.end11
  %7 = load i16, ptr @sx, align 2
  %conv20 = zext i16 %7 to i32
  %rem21 = srem i32 %conv20, 6
  %conv22 = trunc i32 %rem21 to i16
  store i16 %conv22, ptr %sy, align 2
  %8 = load i16, ptr %sy, align 2
  %conv23 = zext i16 %8 to i32
  %cmp24 = icmp ne i32 %conv23, 2
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end19
  call void @abort() #4
  unreachable

if.end27:                                         ; preds = %if.end19
  %9 = load i32, ptr @ix, align 4
  %div28 = udiv i32 %9, 6
  store i32 %div28, ptr %iy, align 4
  %10 = load i32, ptr %iy, align 4
  %cmp29 = icmp ne i32 %10, 3
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end27
  call void @abort() #4
  unreachable

if.end32:                                         ; preds = %if.end27
  %11 = load i32, ptr @ix, align 4
  %rem33 = urem i32 %11, 6
  store i32 %rem33, ptr %iy, align 4
  %12 = load i32, ptr %iy, align 4
  %cmp34 = icmp ne i32 %12, 3
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end32
  call void @abort() #4
  unreachable

if.end37:                                         ; preds = %if.end32
  %13 = load i64, ptr @lx, align 8
  %div38 = udiv i64 %13, 6
  store i64 %div38, ptr %ly, align 8
  %14 = load i64, ptr %ly, align 8
  %cmp39 = icmp ne i64 %14, 4
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  call void @abort() #4
  unreachable

if.end42:                                         ; preds = %if.end37
  %15 = load i64, ptr @lx, align 8
  %rem43 = urem i64 %15, 6
  store i64 %rem43, ptr %ly, align 8
  %16 = load i64, ptr %ly, align 8
  %cmp44 = icmp ne i64 %16, 4
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end42
  call void @abort() #4
  unreachable

if.end47:                                         ; preds = %if.end42
  %17 = load i64, ptr @Lx, align 8
  %div48 = udiv i64 %17, 6
  store i64 %div48, ptr %Ly, align 8
  %18 = load i64, ptr %Ly, align 8
  %cmp49 = icmp ne i64 %18, 5
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end47
  call void @abort() #4
  unreachable

if.end52:                                         ; preds = %if.end47
  %19 = load i64, ptr @Lx, align 8
  %rem53 = urem i64 %19, 6
  store i64 %rem53, ptr %Ly, align 8
  %20 = load i64, ptr %Ly, align 8
  %cmp54 = icmp ne i64 %20, 5
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end52
  call void @abort() #4
  unreachable

if.end57:                                         ; preds = %if.end52
  call void @exit(i32 noundef 0) #5
  unreachable
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

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
