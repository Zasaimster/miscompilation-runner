; 147415225274459923738207029154220488245
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/147415225274459923738207029154220488245_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/147415225274459923738207029154220488245.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.font_hints_s = type { i32, i32, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"I exist!\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"I'm not used\0A\00", align 1
@main.fh = internal global [3 x %struct.font_hints_s] [%struct.font_hints_s { i32 0, i32 1, i32 0 }, %struct.font_hints_s { i32 0, i32 0, i32 1 }, %struct.font_hints_s zeroinitializer], align 16
@main.gsf = internal global [4 x %struct.gs_fixed_point_s] [%struct.gs_fixed_point_s { i64 196608, i64 80216 }, %struct.gs_fixed_point_s { i64 196608, i64 98697 }, %struct.gs_fixed_point_s { i64 80216, i64 196608 }, %struct.gs_fixed_point_s { i64 98697, i64 196608 }], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @line_hints(ptr noundef %fh, ptr noundef %p0, ptr noundef %p1) #0 {
entry:
  %fh.addr = alloca ptr, align 8
  %p0.addr = alloca ptr, align 8
  %p1.addr = alloca ptr, align 8
  %dx = alloca i64, align 8
  %dy = alloca i64, align 8
  %adx = alloca i64, align 8
  %ady = alloca i64, align 8
  %xi = alloca i32, align 4
  %yi = alloca i32, align 4
  %hints = alloca i32, align 4
  %t = alloca i64, align 8
  %ti = alloca i32, align 4
  store ptr %fh, ptr %fh.addr, align 8
  store ptr %p0, ptr %p0.addr, align 8
  store ptr %p1, ptr %p1.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %conv = sext i32 %call to i64
  %0 = load ptr, ptr %p0.addr, align 8
  %x = getelementptr inbounds nuw %struct.gs_fixed_point_s, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %x, align 8
  %sub = sub nsw i64 %conv, %1
  store i64 %sub, ptr %dx, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %conv2 = sext i32 %call1 to i64
  %2 = load ptr, ptr %p0.addr, align 8
  %y = getelementptr inbounds nuw %struct.gs_fixed_point_s, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %y, align 8
  %sub3 = sub nsw i64 %conv2, %3
  store i64 %sub3, ptr %dy, align 8
  %4 = load ptr, ptr %fh.addr, align 8
  %x_inverted = getelementptr inbounds nuw %struct.font_hints_s, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %x_inverted, align 4
  store i32 %5, ptr %xi, align 4
  %6 = load ptr, ptr %fh.addr, align 8
  %y_inverted = getelementptr inbounds nuw %struct.font_hints_s, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %y_inverted, align 4
  store i32 %7, ptr %yi, align 4
  %8 = load i32, ptr %xi, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i64, ptr %dx, align 8
  %sub4 = sub nsw i64 0, %9
  store i64 %sub4, ptr %dx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, ptr %yi, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %11 = load i64, ptr %dy, align 8
  %sub7 = sub nsw i64 0, %11
  store i64 %sub7, ptr %dy, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  %12 = load ptr, ptr %fh.addr, align 8
  %axes_swapped = getelementptr inbounds nuw %struct.font_hints_s, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %axes_swapped, align 4
  %tobool9 = icmp ne i32 %13, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  %14 = load i64, ptr %dx, align 8
  store i64 %14, ptr %t, align 8
  %15 = load i32, ptr %xi, align 4
  store i32 %15, ptr %ti, align 4
  %16 = load i64, ptr %dy, align 8
  store i64 %16, ptr %dx, align 8
  %17 = load i32, ptr %yi, align 4
  store i32 %17, ptr %xi, align 4
  %18 = load i64, ptr %t, align 8
  store i64 %18, ptr %dy, align 8
  %19 = load i32, ptr %ti, align 4
  store i32 %19, ptr %yi, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8
  %20 = load i64, ptr %dx, align 8
  %cmp = icmp slt i64 %20, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end11
  %21 = load i64, ptr %dx, align 8
  %sub13 = sub nsw i64 0, %21
  br label %cond.end

cond.false:                                       ; preds = %if.end11
  %22 = load i64, ptr %dx, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub13, %cond.true ], [ %22, %cond.false ]
  store i64 %cond, ptr %adx, align 8
  %23 = load i64, ptr %dy, align 8
  %cmp14 = icmp slt i64 %23, 0
  br i1 %cmp14, label %cond.true16, label %cond.false18

cond.true16:                                      ; preds = %cond.end
  %24 = load i64, ptr %dy, align 8
  %sub17 = sub nsw i64 0, %24
  br label %cond.end19

cond.false18:                                     ; preds = %cond.end
  %25 = load i64, ptr %dy, align 8
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false18, %cond.true16
  %cond20 = phi i64 [ %sub17, %cond.true16 ], [ %25, %cond.false18 ]
  store i64 %cond20, ptr %ady, align 8
  %26 = load i64, ptr %dy, align 8
  %cmp21 = icmp ne i64 %26, 0
  br i1 %cmp21, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end19
  %27 = load i64, ptr %adx, align 8
  %28 = load i64, ptr %ady, align 8
  %shr = ashr i64 %28, 4
  %cmp23 = icmp sle i64 %27, %shr
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %land.lhs.true
  %29 = load i64, ptr %dy, align 8
  %cmp26 = icmp sgt i64 %29, 0
  %cond28 = select i1 %cmp26, i32 2, i32 1
  store i32 %cond28, ptr %hints, align 4
  %30 = load i32, ptr %xi, align 4
  %tobool29 = icmp ne i32 %30, 0
  br i1 %tobool29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then25
  %31 = load i32, ptr %hints, align 4
  %xor = xor i32 %31, 3
  store i32 %xor, ptr %hints, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.then25
  br label %if.end48

if.else:                                          ; preds = %land.lhs.true, %cond.end19
  %32 = load i64, ptr %dx, align 8
  %cmp32 = icmp ne i64 %32, 0
  br i1 %cmp32, label %land.lhs.true34, label %if.else46

land.lhs.true34:                                  ; preds = %if.else
  %33 = load i64, ptr %ady, align 8
  %34 = load i64, ptr %adx, align 8
  %shr35 = ashr i64 %34, 4
  %cmp36 = icmp sle i64 %33, %shr35
  br i1 %cmp36, label %if.then38, label %if.else46

if.then38:                                        ; preds = %land.lhs.true34
  %35 = load i64, ptr %dx, align 8
  %cmp39 = icmp slt i64 %35, 0
  %cond41 = select i1 %cmp39, i32 8, i32 4
  store i32 %cond41, ptr %hints, align 4
  %36 = load i32, ptr %yi, align 4
  %tobool42 = icmp ne i32 %36, 0
  br i1 %tobool42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.then38
  %37 = load i32, ptr %hints, align 4
  %xor44 = xor i32 %37, 12
  store i32 %xor44, ptr %hints, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.then38
  br label %if.end47

if.else46:                                        ; preds = %land.lhs.true34, %if.else
  store i32 0, ptr %hints, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else46, %if.end45
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end31
  %38 = load i32, ptr %hints, align 4
  ret i32 %38
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @line_hints(ptr noundef @main.fh, ptr noundef @main.gsf, ptr noundef getelementptr inbounds (%struct.gs_fixed_point_s, ptr @main.gsf, i64 1))
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i32 @line_hints(ptr noundef getelementptr inbounds (%struct.font_hints_s, ptr @main.fh, i64 1), ptr noundef getelementptr inbounds (%struct.gs_fixed_point_s, ptr @main.gsf, i64 2), ptr noundef getelementptr inbounds (%struct.gs_fixed_point_s, ptr @main.gsf, i64 3))
  %cmp2 = icmp ne i32 %call1, 8
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = call i32 @line_hints(ptr noundef getelementptr inbounds (%struct.font_hints_s, ptr @main.fh, i64 2), ptr noundef getelementptr inbounds (%struct.gs_fixed_point_s, ptr @main.gsf, i64 2), ptr noundef getelementptr inbounds (%struct.gs_fixed_point_s, ptr @main.gsf, i64 3))
  %cmp5 = icmp ne i32 %call4, 4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false3
  call void @exit(i32 noundef 0) #5
  unreachable
}

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
