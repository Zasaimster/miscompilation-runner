; 101405570144715978719957840804110450157
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/101405570144715978719957840804110450157.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/101405570144715978719957840804110450157.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cx = dso_local global i8 7, align 1
@sx = dso_local global i16 0, align 2
@ix = dso_local global i32 21, align 4
@lx = dso_local global i64 28, align 8
@Lx = dso_local global i64 35, align 8

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
  %cmp = icmp ne i32 %conv2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i8, ptr @cx, align 1
  %conv4 = zext i8 %2 to i32
  %rem = srem i32 %conv4, 6
  %conv5 = trunc i32 %rem to i8
  store i8 %conv5, ptr %cy, align 1
  %3 = load i8, ptr %cy, align 1
  %conv6 = zext i8 %3 to i32
  %cmp7 = icmp ne i32 %conv6, 1
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end10:                                         ; preds = %if.end
  %4 = load i16, ptr @sx, align 2
  %conv11 = zext i16 %4 to i32
  %div12 = sdiv i32 %conv11, 6
  %conv13 = trunc i32 %div12 to i16
  store i16 %conv13, ptr %sy, align 2
  %5 = load i16, ptr %sy, align 2
  %conv14 = zext i16 %5 to i32
  %cmp15 = icmp ne i32 %conv14, 2
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end10
  call void @abort() #3
  unreachable

if.end18:                                         ; preds = %if.end10
  %6 = load i16, ptr @sx, align 2
  %conv19 = zext i16 %6 to i32
  %rem20 = srem i32 %conv19, 6
  %conv21 = trunc i32 %rem20 to i16
  store i16 %conv21, ptr %sy, align 2
  %7 = load i16, ptr %sy, align 2
  %conv22 = zext i16 %7 to i32
  %cmp23 = icmp ne i32 %conv22, 2
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end18
  call void @abort() #3
  unreachable

if.end26:                                         ; preds = %if.end18
  %8 = load i32, ptr @ix, align 4
  %div27 = udiv i32 %8, 6
  store i32 %div27, ptr %iy, align 4
  %9 = load i32, ptr %iy, align 4
  %cmp28 = icmp ne i32 %9, 3
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end26
  call void @abort() #3
  unreachable

if.end31:                                         ; preds = %if.end26
  %10 = load i32, ptr @ix, align 4
  %rem32 = urem i32 %10, 6
  store i32 %rem32, ptr %iy, align 4
  %11 = load i32, ptr %iy, align 4
  %cmp33 = icmp ne i32 %11, 3
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end31
  call void @abort() #3
  unreachable

if.end36:                                         ; preds = %if.end31
  %12 = load i64, ptr @lx, align 8
  %div37 = udiv i64 %12, 6
  store i64 %div37, ptr %ly, align 8
  %13 = load i64, ptr %ly, align 8
  %cmp38 = icmp ne i64 %13, 4
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end36
  call void @abort() #3
  unreachable

if.end41:                                         ; preds = %if.end36
  %14 = load i64, ptr @lx, align 8
  %rem42 = urem i64 %14, 6
  store i64 %rem42, ptr %ly, align 8
  %15 = load i64, ptr %ly, align 8
  %cmp43 = icmp ne i64 %15, 4
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end41
  call void @abort() #3
  unreachable

if.end46:                                         ; preds = %if.end41
  %16 = load i64, ptr @Lx, align 8
  %div47 = udiv i64 %16, 6
  store i64 %div47, ptr %Ly, align 8
  %17 = load i64, ptr %Ly, align 8
  %cmp48 = icmp ne i64 %17, 5
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end46
  call void @abort() #3
  unreachable

if.end51:                                         ; preds = %if.end46
  %18 = load i64, ptr @Lx, align 8
  %rem52 = urem i64 %18, 6
  store i64 %rem52, ptr %Ly, align 8
  %19 = load i64, ptr %Ly, align 8
  %cmp53 = icmp ne i64 %19, 5
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end51
  call void @abort() #3
  unreachable

if.end56:                                         ; preds = %if.end51
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

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
