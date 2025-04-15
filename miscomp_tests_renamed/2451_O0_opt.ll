; 143258536684344965634072981735924940326
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/143258536684344965634072981735924940326_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/143258536684344965634072981735924940326.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cx = dso_local global i8 7, align 1
@sx = dso_local global i16 14, align 2
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
  store i8 10, ptr %cy, align 1
  %0 = load i8, ptr %cy, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp ne i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i8, ptr @cx, align 1
  %conv2 = zext i8 %1 to i32
  %rem = srem i32 %conv2, 6
  %conv3 = trunc i32 %rem to i8
  store i8 %conv3, ptr %cy, align 1
  %2 = load i8, ptr %cy, align 1
  %conv4 = zext i8 %2 to i32
  %cmp5 = icmp ne i32 %conv4, 1
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end8:                                          ; preds = %if.end
  %3 = load i16, ptr @sx, align 2
  %conv9 = zext i16 %3 to i32
  %div = sdiv i32 %conv9, 6
  %conv10 = trunc i32 %div to i16
  store i16 %conv10, ptr %sy, align 2
  %4 = load i16, ptr %sy, align 2
  %conv11 = zext i16 %4 to i32
  %cmp12 = icmp ne i32 %conv11, 2
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end8
  call void @abort() #3
  unreachable

if.end15:                                         ; preds = %if.end8
  %5 = load i16, ptr @sx, align 2
  %conv16 = zext i16 %5 to i32
  %rem17 = srem i32 %conv16, 6
  %conv18 = trunc i32 %rem17 to i16
  store i16 %conv18, ptr %sy, align 2
  %6 = load i16, ptr %sy, align 2
  %conv19 = zext i16 %6 to i32
  %cmp20 = icmp ne i32 %conv19, 2
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end15
  call void @abort() #3
  unreachable

if.end23:                                         ; preds = %if.end15
  %7 = load i32, ptr @ix, align 4
  %div24 = udiv i32 %7, 6
  store i32 %div24, ptr %iy, align 4
  %8 = load i32, ptr %iy, align 4
  %cmp25 = icmp ne i32 %8, 3
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end23
  call void @abort() #3
  unreachable

if.end28:                                         ; preds = %if.end23
  %9 = load i32, ptr @ix, align 4
  %rem29 = urem i32 %9, 6
  store i32 %rem29, ptr %iy, align 4
  %10 = load i32, ptr %iy, align 4
  %cmp30 = icmp ne i32 %10, 3
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  call void @abort() #3
  unreachable

if.end33:                                         ; preds = %if.end28
  %11 = load i64, ptr @lx, align 8
  %div34 = udiv i64 %11, 6
  store i64 %div34, ptr %ly, align 8
  %12 = load i64, ptr %ly, align 8
  %cmp35 = icmp ne i64 %12, 4
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end33
  call void @abort() #3
  unreachable

if.end38:                                         ; preds = %if.end33
  %13 = load i64, ptr @lx, align 8
  %rem39 = urem i64 %13, 6
  store i64 %rem39, ptr %ly, align 8
  %14 = load i64, ptr %ly, align 8
  %cmp40 = icmp ne i64 %14, 4
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end38
  call void @abort() #3
  unreachable

if.end43:                                         ; preds = %if.end38
  %15 = load i64, ptr @Lx, align 8
  %div44 = udiv i64 %15, 6
  store i64 %div44, ptr %Ly, align 8
  %16 = load i64, ptr %Ly, align 8
  %cmp45 = icmp ne i64 %16, 5
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end43
  call void @abort() #3
  unreachable

if.end48:                                         ; preds = %if.end43
  %17 = load i64, ptr @Lx, align 8
  %rem49 = urem i64 %17, 6
  store i64 %rem49, ptr %Ly, align 8
  %18 = load i64, ptr %Ly, align 8
  %cmp50 = icmp ne i64 %18, 5
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end48
  call void @abort() #3
  unreachable

if.end53:                                         ; preds = %if.end48
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
