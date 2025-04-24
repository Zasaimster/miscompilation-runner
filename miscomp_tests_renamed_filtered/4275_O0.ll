; 174845977588921701794216300268120761476
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/174845977588921701794216300268120761476.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/174845977588921701794216300268120761476.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.font_hints_s = type { i32, i32, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }

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
  store i64 0, ptr %dx, align 8
  %0 = load ptr, ptr %p1.addr, align 8
  %y = getelementptr inbounds nuw %struct.gs_fixed_point_s, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %y, align 8
  %2 = load ptr, ptr %p0.addr, align 8
  %y1 = getelementptr inbounds nuw %struct.gs_fixed_point_s, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %y1, align 8
  %sub = sub nsw i64 %1, %3
  store i64 %sub, ptr %dy, align 8
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
  %sub2 = sub nsw i64 0, %9
  store i64 %sub2, ptr %dx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, ptr %yi, align 4
  %tobool3 = icmp ne i32 %10, 0
  br i1 %tobool3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %11 = load i64, ptr %dy, align 8
  %sub5 = sub nsw i64 0, %11
  store i64 %sub5, ptr %dy, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %12 = load ptr, ptr %fh.addr, align 8
  %axes_swapped = getelementptr inbounds nuw %struct.font_hints_s, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %axes_swapped, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
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
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  %20 = load i64, ptr %dx, align 8
  %cmp = icmp slt i64 %20, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end9
  %21 = load i64, ptr %dx, align 8
  %sub10 = sub nsw i64 0, %21
  br label %cond.end

cond.false:                                       ; preds = %if.end9
  %22 = load i64, ptr %dx, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub10, %cond.true ], [ %22, %cond.false ]
  store i64 %cond, ptr %adx, align 8
  %23 = load i64, ptr %dy, align 8
  %cmp11 = icmp slt i64 %23, 0
  br i1 %cmp11, label %cond.true12, label %cond.false14

cond.true12:                                      ; preds = %cond.end
  %24 = load i64, ptr %dy, align 8
  %sub13 = sub nsw i64 0, %24
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end
  %25 = load i64, ptr %dy, align 8
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false14, %cond.true12
  %cond16 = phi i64 [ %sub13, %cond.true12 ], [ %25, %cond.false14 ]
  store i64 %cond16, ptr %ady, align 8
  %26 = load i64, ptr %dy, align 8
  %cmp17 = icmp ne i64 %26, 0
  br i1 %cmp17, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end15
  %27 = load i64, ptr %adx, align 8
  %28 = load i64, ptr %ady, align 8
  %shr = ashr i64 %28, 4
  %cmp18 = icmp sle i64 %27, %shr
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %land.lhs.true
  %29 = load i64, ptr %dy, align 8
  %cmp20 = icmp sgt i64 %29, 0
  %30 = zext i1 %cmp20 to i64
  %cond21 = select i1 %cmp20, i32 2, i32 1
  store i32 %cond21, ptr %hints, align 4
  %31 = load i32, ptr %xi, align 4
  %tobool22 = icmp ne i32 %31, 0
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then19
  %32 = load i32, ptr %hints, align 4
  %xor = xor i32 %32, 3
  store i32 %xor, ptr %hints, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.then19
  br label %if.end38

if.else:                                          ; preds = %land.lhs.true, %cond.end15
  %33 = load i64, ptr %dx, align 8
  %cmp25 = icmp ne i64 %33, 0
  br i1 %cmp25, label %land.lhs.true26, label %if.else36

land.lhs.true26:                                  ; preds = %if.else
  %34 = load i64, ptr %ady, align 8
  %35 = load i64, ptr %adx, align 8
  %shr27 = ashr i64 %35, 4
  %cmp28 = icmp sle i64 %34, %shr27
  br i1 %cmp28, label %if.then29, label %if.else36

if.then29:                                        ; preds = %land.lhs.true26
  %36 = load i64, ptr %dx, align 8
  %cmp30 = icmp slt i64 %36, 0
  %37 = zext i1 %cmp30 to i64
  %cond31 = select i1 %cmp30, i32 8, i32 4
  store i32 %cond31, ptr %hints, align 4
  %38 = load i32, ptr %yi, align 4
  %tobool32 = icmp ne i32 %38, 0
  br i1 %tobool32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.then29
  %39 = load i32, ptr %hints, align 4
  %xor34 = xor i32 %39, 12
  store i32 %xor34, ptr %hints, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.then29
  br label %if.end37

if.else36:                                        ; preds = %land.lhs.true26, %if.else
  store i32 0, ptr %hints, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else36, %if.end35
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end24
  %40 = load i32, ptr %hints, align 4
  ret i32 %40
}

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
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %lor.lhs.false3
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
