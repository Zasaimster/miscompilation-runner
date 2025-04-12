; 18619990015627435768647608516794585919
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/18619990015627435768647608516794585919_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/18619990015627435768647608516794585919.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Point = type { i64, i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i64 %p0.coerce0, i64 %p0.coerce1, i64 %p1.coerce0, i64 %p1.coerce1, i64 %p2.coerce0, i64 %p2.coerce1, ptr noundef byval(%struct.Point) align 8 %p3, ptr noundef byval(%struct.Point) align 8 %p4, ptr noundef byval(%struct.Point) align 8 %p5) #0 {
entry:
  %p0 = alloca %struct.Point, align 8
  %p1 = alloca %struct.Point, align 8
  %p2 = alloca %struct.Point, align 8
  %0 = getelementptr inbounds nuw { i64, i64 }, ptr %p0, i32 0, i32 0
  store i64 %p0.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds nuw { i64, i64 }, ptr %p0, i32 0, i32 1
  store i64 %p0.coerce1, ptr %1, align 8
  %2 = getelementptr inbounds nuw { i64, i64 }, ptr %p1, i32 0, i32 0
  store i64 %p1.coerce0, ptr %2, align 8
  %3 = getelementptr inbounds nuw { i64, i64 }, ptr %p1, i32 0, i32 1
  store i64 %p1.coerce1, ptr %3, align 8
  %4 = getelementptr inbounds nuw { i64, i64 }, ptr %p2, i32 0, i32 0
  store i64 %p2.coerce0, ptr %4, align 8
  %5 = getelementptr inbounds nuw { i64, i64 }, ptr %p2, i32 0, i32 1
  store i64 %p2.coerce1, ptr %5, align 8
  %p_x = getelementptr inbounds nuw %struct.Point, ptr %p0, i32 0, i32 0
  %6 = load i64, ptr %p_x, align 8
  %cmp = icmp ne i64 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %p_y = getelementptr inbounds nuw %struct.Point, ptr %p0, i32 0, i32 1
  %7 = load i64, ptr %p_y, align 8
  %cmp1 = icmp ne i64 %7, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %p_x3 = getelementptr inbounds nuw %struct.Point, ptr %p1, i32 0, i32 0
  %8 = load i64, ptr %p_x3, align 8
  %cmp4 = icmp ne i64 %8, -1
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %p_y6 = getelementptr inbounds nuw %struct.Point, ptr %p1, i32 0, i32 1
  %9 = load i64, ptr %p_y6, align 8
  %cmp7 = icmp ne i64 %9, 0
  br i1 %cmp7, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %p_x9 = getelementptr inbounds nuw %struct.Point, ptr %p2, i32 0, i32 0
  %10 = load i64, ptr %p_x9, align 8
  %cmp10 = icmp ne i64 %10, 1
  br i1 %cmp10, label %if.then, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %p_y12 = getelementptr inbounds nuw %struct.Point, ptr %p2, i32 0, i32 1
  %11 = load i64, ptr %p_y12, align 8
  %cmp13 = icmp ne i64 %11, -1
  br i1 %cmp13, label %if.then, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %p_x15 = getelementptr inbounds nuw %struct.Point, ptr %p3, i32 0, i32 0
  %12 = load i64, ptr %p_x15, align 8
  %cmp16 = icmp ne i64 %12, -1
  br i1 %cmp16, label %if.then, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false14
  %p_y18 = getelementptr inbounds nuw %struct.Point, ptr %p3, i32 0, i32 1
  %13 = load i64, ptr %p_y18, align 8
  %cmp19 = icmp ne i64 %13, 1
  br i1 %cmp19, label %if.then, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false17
  %p_x21 = getelementptr inbounds nuw %struct.Point, ptr %p4, i32 0, i32 0
  %14 = load i64, ptr %p_x21, align 8
  %cmp22 = icmp ne i64 %14, 0
  br i1 %cmp22, label %if.then, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false20
  %p_y24 = getelementptr inbounds nuw %struct.Point, ptr %p4, i32 0, i32 1
  %15 = load i64, ptr %p_y24, align 8
  %cmp25 = icmp ne i64 %15, -1
  br i1 %cmp25, label %if.then, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false23
  %p_x27 = getelementptr inbounds nuw %struct.Point, ptr %p5, i32 0, i32 0
  %16 = load i64, ptr %p_x27, align 8
  %cmp28 = icmp ne i64 %16, 1
  br i1 %cmp28, label %if.then, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false26
  %p_y30 = getelementptr inbounds nuw %struct.Point, ptr %p5, i32 0, i32 1
  %17 = load i64, ptr %p_y30, align 8
  %cmp31 = icmp ne i64 %17, 0
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false29, %lor.lhs.false26, %lor.lhs.false23, %lor.lhs.false20, %lor.lhs.false17, %lor.lhs.false14, %lor.lhs.false11, %lor.lhs.false8, %lor.lhs.false5, %lor.lhs.false2, %lor.lhs.false, %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %lor.lhs.false29
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
entry:
  %p0 = alloca %struct.Point, align 8
  %p1 = alloca %struct.Point, align 8
  %p2 = alloca %struct.Point, align 8
  %p3 = alloca %struct.Point, align 8
  %p4 = alloca %struct.Point, align 8
  %p5 = alloca %struct.Point, align 8
  call void @bar()
  %p_x = getelementptr inbounds nuw %struct.Point, ptr %p0, i32 0, i32 0
  store i64 0, ptr %p_x, align 8
  %p_y = getelementptr inbounds nuw %struct.Point, ptr %p0, i32 0, i32 1
  store i64 1, ptr %p_y, align 8
  %p_x1 = getelementptr inbounds nuw %struct.Point, ptr %p1, i32 0, i32 0
  store i64 -1, ptr %p_x1, align 8
  %p_y2 = getelementptr inbounds nuw %struct.Point, ptr %p1, i32 0, i32 1
  store i64 0, ptr %p_y2, align 8
  %p_x3 = getelementptr inbounds nuw %struct.Point, ptr %p2, i32 0, i32 0
  store i64 1, ptr %p_x3, align 8
  %p_y4 = getelementptr inbounds nuw %struct.Point, ptr %p2, i32 0, i32 1
  store i64 -1, ptr %p_y4, align 8
  %p_x5 = getelementptr inbounds nuw %struct.Point, ptr %p3, i32 0, i32 0
  store i64 -1, ptr %p_x5, align 8
  %p_y6 = getelementptr inbounds nuw %struct.Point, ptr %p3, i32 0, i32 1
  store i64 1, ptr %p_y6, align 8
  %p_x7 = getelementptr inbounds nuw %struct.Point, ptr %p4, i32 0, i32 0
  store i64 0, ptr %p_x7, align 8
  %p_y8 = getelementptr inbounds nuw %struct.Point, ptr %p4, i32 0, i32 1
  store i64 -1, ptr %p_y8, align 8
  %p_x9 = getelementptr inbounds nuw %struct.Point, ptr %p5, i32 0, i32 0
  store i64 1, ptr %p_x9, align 8
  %p_y10 = getelementptr inbounds nuw %struct.Point, ptr %p5, i32 0, i32 1
  store i64 0, ptr %p_y10, align 8
  %0 = getelementptr inbounds nuw { i64, i64 }, ptr %p0, i32 0, i32 0
  %1 = load i64, ptr %0, align 8
  %2 = getelementptr inbounds nuw { i64, i64 }, ptr %p0, i32 0, i32 1
  %3 = load i64, ptr %2, align 8
  %4 = getelementptr inbounds nuw { i64, i64 }, ptr %p1, i32 0, i32 0
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds nuw { i64, i64 }, ptr %p1, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds nuw { i64, i64 }, ptr %p2, i32 0, i32 0
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds nuw { i64, i64 }, ptr %p2, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  call void @f(i64 %1, i64 %3, i64 %5, i64 %7, i64 %9, i64 %11, ptr noundef byval(%struct.Point) align 8 %p3, ptr noundef byval(%struct.Point) align 8 %p4, ptr noundef byval(%struct.Point) align 8 %p5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @foo()
  call void @exit(i32 noundef 0) #4
  unreachable
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
