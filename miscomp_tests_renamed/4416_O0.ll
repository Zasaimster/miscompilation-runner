; 177609821279686035617644857139043421340
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/177609821279686035617644857139043421340.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/177609821279686035617644857139043421340.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.point = type { double, double }

@point_array = dso_local global [10 x %struct.point] zeroinitializer, align 16
@.str = private unnamed_addr constant [8 x i8] c"%f, %f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %my_point = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 10, ptr %my_point, align 4
  %0 = load i32, ptr %my_point, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.point], ptr @point_array, i64 0, i64 %idxprom
  %x = getelementptr inbounds nuw %struct.point, ptr %arrayidx, i32 0, i32 0
  store double 1.234000e+01, ptr %x, align 16
  %1 = load i32, ptr %my_point, align 4
  %idxprom1 = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds [10 x %struct.point], ptr @point_array, i64 0, i64 %idxprom1
  %y = getelementptr inbounds nuw %struct.point, ptr %arrayidx2, i32 0, i32 1
  store double 5.678000e+01, ptr %y, align 8
  %2 = load i32, ptr %my_point, align 4
  %idxprom3 = sext i32 %2 to i64
  %arrayidx4 = getelementptr inbounds [10 x %struct.point], ptr @point_array, i64 0, i64 %idxprom3
  %x5 = getelementptr inbounds nuw %struct.point, ptr %arrayidx4, i32 0, i32 0
  %3 = load double, ptr %x5, align 16
  %4 = load i32, ptr %my_point, align 4
  %idxprom6 = sext i32 %4 to i64
  %arrayidx7 = getelementptr inbounds [10 x %struct.point], ptr @point_array, i64 0, i64 %idxprom6
  %y8 = getelementptr inbounds nuw %struct.point, ptr %arrayidx7, i32 0, i32 1
  %5 = load double, ptr %y8, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %3, double noundef %5)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
