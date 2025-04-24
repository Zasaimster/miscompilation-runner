; 136192123612711631962702925369886214313
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/136192123612711631962702925369886214313_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/136192123612711631962702925369886214313.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.font_hints_s = type { i32, i32, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"X is positive\0A\00", align 1
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
  %2 = load ptr, ptr %p1.addr, align 8
  %y = getelementptr inbounds nuw %struct.gs_fixed_point_s, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %y, align 8
  %4 = load ptr, ptr %p0.addr, align 8
  %y1 = getelementptr inbounds nuw %struct.gs_fixed_point_s, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %y1, align 8
  %sub2 = sub nsw i64 %3, %5
  store i64 %sub2, ptr %dy, align 8
  %6 = load ptr, ptr %fh.addr, align 8
  %x_inverted = getelementptr inbounds nuw %struct.font_hints_s, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %x_inverted, align 4
  store i32 %7, ptr %xi, align 4
  %8 = load ptr, ptr %fh.addr, align 8
  %y_inverted = getelementptr inbounds nuw %struct.font_hints_s, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %y_inverted, align 4
  store i32 %9, ptr %yi, align 4
  %10 = load i32, ptr %xi, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i64, ptr %dx, align 8
  %sub3 = sub nsw i64 0, %11
  store i64 %sub3, ptr %dx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, ptr %yi, align 4
  %tobool4 = icmp ne i32 %12, 0
  br i1 %tobool4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %13 = load i64, ptr %dy, align 8
  %sub6 = sub nsw i64 0, %13
  store i64 %sub6, ptr %dy, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %14 = load ptr, ptr %fh.addr, align 8
  %axes_swapped = getelementptr inbounds nuw %struct.font_hints_s, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %axes_swapped, align 4
  %tobool8 = icmp ne i32 %15, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  %16 = load i64, ptr %dx, align 8
  store i64 %16, ptr %t, align 8
  %17 = load i32, ptr %xi, align 4
  store i32 %17, ptr %ti, align 4
  %18 = load i64, ptr %dy, align 8
  store i64 %18, ptr %dx, align 8
  %19 = load i32, ptr %yi, align 4
  store i32 %19, ptr %xi, align 4
  %20 = load i64, ptr %t, align 8
  store i64 %20, ptr %dy, align 8
  %21 = load i32, ptr %ti, align 4
  store i32 %21, ptr %yi, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7
  %22 = load i64, ptr %dx, align 8
  %cmp = icmp slt i64 %22, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end10
  %23 = load i64, ptr %dx, align 8
  %sub12 = sub nsw i64 0, %23
  br label %cond.end

cond.false:                                       ; preds = %if.end10
  %24 = load i64, ptr %dx, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub12, %cond.true ], [ %24, %cond.false ]
  store i64 %cond, ptr %adx, align 8
  %25 = load i64, ptr %dy, align 8
  %cmp13 = icmp slt i64 %25, 0
  br i1 %cmp13, label %cond.true15, label %cond.false17

cond.true15:                                      ; preds = %cond.end
  %26 = load i64, ptr %dy, align 8
  %sub16 = sub nsw i64 0, %26
  br label %cond.end18

cond.false17:                                     ; preds = %cond.end
  %27 = load i64, ptr %dy, align 8
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false17, %cond.true15
  %cond19 = phi i64 [ %sub16, %cond.true15 ], [ %27, %cond.false17 ]
  store i64 %cond19, ptr %ady, align 8
  %28 = load i64, ptr %dy, align 8
  %cmp20 = icmp ne i64 %28, 0
  br i1 %cmp20, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end18
  %29 = load i64, ptr %adx, align 8
  %30 = load i64, ptr %ady, align 8
  %shr = ashr i64 %30, 4
  %cmp22 = icmp sle i64 %29, %shr
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %land.lhs.true
  %31 = load i64, ptr %dy, align 8
  %cmp25 = icmp sgt i64 %31, 0
  %cond27 = select i1 %cmp25, i32 2, i32 1
  store i32 %cond27, ptr %hints, align 4
  %32 = load i32, ptr %xi, align 4
  %tobool28 = icmp ne i32 %32, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then24
  %33 = load i32, ptr %hints, align 4
  %xor = xor i32 %33, 3
  store i32 %xor, ptr %hints, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then24
  br label %if.end47

if.else:                                          ; preds = %land.lhs.true, %cond.end18
  %34 = load i64, ptr %dx, align 8
  %cmp31 = icmp ne i64 %34, 0
  br i1 %cmp31, label %land.lhs.true33, label %if.else45

land.lhs.true33:                                  ; preds = %if.else
  %35 = load i64, ptr %ady, align 8
  %36 = load i64, ptr %adx, align 8
  %shr34 = ashr i64 %36, 4
  %cmp35 = icmp sle i64 %35, %shr34
  br i1 %cmp35, label %if.then37, label %if.else45

if.then37:                                        ; preds = %land.lhs.true33
  %37 = load i64, ptr %dx, align 8
  %cmp38 = icmp slt i64 %37, 0
  %cond40 = select i1 %cmp38, i32 8, i32 4
  store i32 %cond40, ptr %hints, align 4
  %38 = load i32, ptr %yi, align 4
  %tobool41 = icmp ne i32 %38, 0
  br i1 %tobool41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.then37
  %39 = load i32, ptr %hints, align 4
  %xor43 = xor i32 %39, 12
  store i32 %xor43, ptr %hints, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.then37
  br label %if.end46

if.else45:                                        ; preds = %land.lhs.true33, %if.else
  store i32 0, ptr %hints, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.else45, %if.end44
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end30
  %40 = load i32, ptr %hints, align 4
  ret i32 %40
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
