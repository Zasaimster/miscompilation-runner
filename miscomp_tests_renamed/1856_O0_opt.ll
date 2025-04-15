; 175480834616094707739306105610402120543
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/175480834616094707739306105610402120543_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/175480834616094707739306105610402120543.c"
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
  %0 = load ptr, ptr %p1.addr, align 8
  %x = getelementptr inbounds nuw %struct.gs_fixed_point_s, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %x, align 8
  %2 = load ptr, ptr %p0.addr, align 8
  %x1 = getelementptr inbounds nuw %struct.gs_fixed_point_s, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %x1, align 8
  %sub = sub nsw i64 %1, %3
  store i64 %sub, ptr %dx, align 8
  %4 = load ptr, ptr %p1.addr, align 8
  %y = getelementptr inbounds nuw %struct.gs_fixed_point_s, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %y, align 8
  %6 = load ptr, ptr %p0.addr, align 8
  %y2 = getelementptr inbounds nuw %struct.gs_fixed_point_s, ptr %6, i32 0, i32 1
  %7 = load i64, ptr %y2, align 8
  %sub3 = sub nsw i64 %5, %7
  store i64 %sub3, ptr %dy, align 8
  %8 = load ptr, ptr %fh.addr, align 8
  %x_inverted = getelementptr inbounds nuw %struct.font_hints_s, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %x_inverted, align 4
  store i32 %9, ptr %xi, align 4
  %10 = load ptr, ptr %fh.addr, align 8
  %y_inverted = getelementptr inbounds nuw %struct.font_hints_s, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %y_inverted, align 4
  store i32 %11, ptr %yi, align 4
  %12 = load i32, ptr %xi, align 4
  %cmp = icmp sgt i32 %12, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, ptr %yi, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %14 = load i64, ptr %dy, align 8
  %sub5 = sub nsw i64 0, %14
  store i64 %sub5, ptr %dy, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %15 = load ptr, ptr %fh.addr, align 8
  %axes_swapped = getelementptr inbounds nuw %struct.font_hints_s, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %axes_swapped, align 4
  %tobool7 = icmp ne i32 %16, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  %17 = load i64, ptr %dx, align 8
  store i64 %17, ptr %t, align 8
  %18 = load i32, ptr %xi, align 4
  store i32 %18, ptr %ti, align 4
  %19 = load i64, ptr %dy, align 8
  store i64 %19, ptr %dx, align 8
  %20 = load i32, ptr %yi, align 4
  store i32 %20, ptr %xi, align 4
  %21 = load i64, ptr %t, align 8
  store i64 %21, ptr %dy, align 8
  %22 = load i32, ptr %ti, align 4
  store i32 %22, ptr %yi, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  %23 = load i64, ptr %dx, align 8
  %cmp10 = icmp slt i64 %23, 0
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end9
  %24 = load i64, ptr %dx, align 8
  %sub11 = sub nsw i64 0, %24
  br label %cond.end

cond.false:                                       ; preds = %if.end9
  %25 = load i64, ptr %dx, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub11, %cond.true ], [ %25, %cond.false ]
  store i64 %cond, ptr %adx, align 8
  %26 = load i64, ptr %dy, align 8
  %cmp12 = icmp slt i64 %26, 0
  br i1 %cmp12, label %cond.true13, label %cond.false15

cond.true13:                                      ; preds = %cond.end
  %27 = load i64, ptr %dy, align 8
  %sub14 = sub nsw i64 0, %27
  br label %cond.end16

cond.false15:                                     ; preds = %cond.end
  %28 = load i64, ptr %dy, align 8
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false15, %cond.true13
  %cond17 = phi i64 [ %sub14, %cond.true13 ], [ %28, %cond.false15 ]
  store i64 %cond17, ptr %ady, align 8
  %29 = load i64, ptr %dy, align 8
  %cmp18 = icmp ne i64 %29, 0
  br i1 %cmp18, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end16
  %30 = load i64, ptr %adx, align 8
  %31 = load i64, ptr %ady, align 8
  %shr = ashr i64 %31, 4
  %cmp19 = icmp sle i64 %30, %shr
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %land.lhs.true
  %32 = load i64, ptr %dy, align 8
  %cmp21 = icmp sgt i64 %32, 0
  %cond22 = select i1 %cmp21, i32 2, i32 1
  store i32 %cond22, ptr %hints, align 4
  %33 = load i32, ptr %xi, align 4
  %tobool23 = icmp ne i32 %33, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then20
  %34 = load i32, ptr %hints, align 4
  %xor = xor i32 %34, 3
  store i32 %xor, ptr %hints, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then20
  br label %if.end39

if.else:                                          ; preds = %land.lhs.true, %cond.end16
  %35 = load i64, ptr %dx, align 8
  %cmp26 = icmp ne i64 %35, 0
  br i1 %cmp26, label %land.lhs.true27, label %if.else37

land.lhs.true27:                                  ; preds = %if.else
  %36 = load i64, ptr %ady, align 8
  %37 = load i64, ptr %adx, align 8
  %shr28 = ashr i64 %37, 4
  %cmp29 = icmp sle i64 %36, %shr28
  br i1 %cmp29, label %if.then30, label %if.else37

if.then30:                                        ; preds = %land.lhs.true27
  %38 = load i64, ptr %dx, align 8
  %cmp31 = icmp slt i64 %38, 0
  %cond32 = select i1 %cmp31, i32 8, i32 4
  store i32 %cond32, ptr %hints, align 4
  %39 = load i32, ptr %yi, align 4
  %tobool33 = icmp ne i32 %39, 0
  br i1 %tobool33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.then30
  %40 = load i32, ptr %hints, align 4
  %xor35 = xor i32 %40, 12
  store i32 %xor35, ptr %hints, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.then30
  br label %if.end38

if.else37:                                        ; preds = %land.lhs.true27, %if.else
  store i32 0, ptr %hints, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.else37, %if.end36
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end25
  %41 = load i32, ptr %hints, align 4
  ret i32 %41
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
