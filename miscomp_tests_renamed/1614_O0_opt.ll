; 155090794561209175133826695862851000931
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/155090794561209175133826695862851000931_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/155090794561209175133826695862851000931.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Point = type { i64, i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i64 %basePt.coerce0, i64 %basePt.coerce1, i64 %pt1.coerce0, i64 %pt1.coerce1, i64 %pt2.coerce0, i64 %pt2.coerce1) #0 {
entry:
  %basePt = alloca %struct.Point, align 8
  %pt1 = alloca %struct.Point, align 8
  %pt2 = alloca %struct.Point, align 8
  %vector = alloca i64, align 8
  %0 = getelementptr inbounds nuw { i64, i64 }, ptr %basePt, i32 0, i32 0
  store i64 %basePt.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds nuw { i64, i64 }, ptr %basePt, i32 0, i32 1
  store i64 %basePt.coerce1, ptr %1, align 8
  %2 = getelementptr inbounds nuw { i64, i64 }, ptr %pt1, i32 0, i32 0
  store i64 %pt1.coerce0, ptr %2, align 8
  %3 = getelementptr inbounds nuw { i64, i64 }, ptr %pt1, i32 0, i32 1
  store i64 %pt1.coerce1, ptr %3, align 8
  %4 = getelementptr inbounds nuw { i64, i64 }, ptr %pt2, i32 0, i32 0
  store i64 %pt2.coerce0, ptr %4, align 8
  %5 = getelementptr inbounds nuw { i64, i64 }, ptr %pt2, i32 0, i32 1
  store i64 %pt2.coerce1, ptr %5, align 8
  %p_x = getelementptr inbounds nuw %struct.Point, ptr %pt1, i32 0, i32 0
  %6 = load i64, ptr %p_x, align 8
  %p_x1 = getelementptr inbounds nuw %struct.Point, ptr %basePt, i32 0, i32 0
  %7 = load i64, ptr %p_x1, align 8
  %sub = sub nsw i64 %6, %7
  %p_y = getelementptr inbounds nuw %struct.Point, ptr %pt2, i32 0, i32 1
  %8 = load i64, ptr %p_y, align 8
  %p_y2 = getelementptr inbounds nuw %struct.Point, ptr %basePt, i32 0, i32 1
  %9 = load i64, ptr %p_y2, align 8
  %sub3 = sub nsw i64 %8, %9
  %mul = mul nsw i64 %sub, %sub3
  %p_y4 = getelementptr inbounds nuw %struct.Point, ptr %pt1, i32 0, i32 1
  %10 = load i64, ptr %p_y4, align 8
  %p_y5 = getelementptr inbounds nuw %struct.Point, ptr %basePt, i32 0, i32 1
  %11 = load i64, ptr %p_y5, align 8
  %sub6 = sub nsw i64 %10, %11
  %p_x7 = getelementptr inbounds nuw %struct.Point, ptr %pt2, i32 0, i32 0
  %12 = load i64, ptr %p_x7, align 8
  %p_x8 = getelementptr inbounds nuw %struct.Point, ptr %basePt, i32 0, i32 0
  %13 = load i64, ptr %p_x8, align 8
  %sub9 = sub nsw i64 %12, %13
  %mul10 = mul nsw i64 %sub6, %sub9
  %sub11 = sub nsw i64 %mul, %mul10
  store i64 %sub11, ptr %vector, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %b = alloca %struct.Point, align 8
  %p1 = alloca %struct.Point, align 8
  %p2 = alloca %struct.Point, align 8
  %answer = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %p_x = getelementptr inbounds nuw %struct.Point, ptr %b, i32 0, i32 0
  store i64 -23250, ptr %p_x, align 8
  %p_y = getelementptr inbounds nuw %struct.Point, ptr %b, i32 0, i32 1
  store i64 23250, ptr %p_y, align 8
  %p_x1 = getelementptr inbounds nuw %struct.Point, ptr %p1, i32 0, i32 0
  store i64 23250, ptr %p_x1, align 8
  %p_y2 = getelementptr inbounds nuw %struct.Point, ptr %p1, i32 0, i32 1
  store i64 -23250, ptr %p_y2, align 8
  %p_x3 = getelementptr inbounds nuw %struct.Point, ptr %p2, i32 0, i32 0
  store i64 -23250, ptr %p_x3, align 8
  %p_y4 = getelementptr inbounds nuw %struct.Point, ptr %p2, i32 0, i32 1
  store i64 -23250, ptr %p_y4, align 8
  %0 = getelementptr inbounds nuw { i64, i64 }, ptr %b, i32 0, i32 0
  %1 = load i64, ptr %0, align 8
  %2 = getelementptr inbounds nuw { i64, i64 }, ptr %b, i32 0, i32 1
  %3 = load i64, ptr %2, align 8
  %4 = getelementptr inbounds nuw { i64, i64 }, ptr %p1, i32 0, i32 0
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds nuw { i64, i64 }, ptr %p1, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds nuw { i64, i64 }, ptr %p2, i32 0, i32 0
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds nuw { i64, i64 }, ptr %p2, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  %call = call i32 @f(i64 %1, i64 %3, i64 %5, i64 %7, i64 %9, i64 %11)
  store i32 %call, ptr %answer, align 4
  %12 = load i32, ptr %answer, align 4
  %cmp = icmp ne i32 %12, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
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
