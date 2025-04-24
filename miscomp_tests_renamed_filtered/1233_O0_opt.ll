; 12199498311460747752860493213050180876
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/12199498311460747752860493213050180876_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/12199498311460747752860493213050180876.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ziggy = type { i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"a = %d\0A\00", align 1
@bolshevic = dso_local global %struct.ziggy zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"bolshevic.a = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"bolshevic.b = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"bolshevic.c = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"tsar->a = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"tsar->b = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"tsar->c = %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca ptr, align 8
  %tsar = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %a, align 4
  store ptr %a, ptr %b, align 8
  %0 = load ptr, ptr %b, align 8
  %1 = load i32, ptr %0, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %1)
  store i32 12, ptr @bolshevic, align 4
  store i32 34, ptr getelementptr inbounds nuw (%struct.ziggy, ptr @bolshevic, i32 0, i32 1), align 4
  store i32 56, ptr getelementptr inbounds nuw (%struct.ziggy, ptr @bolshevic, i32 0, i32 2), align 4
  %2 = load i32, ptr @bolshevic, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %2)
  %3 = load i32, ptr getelementptr inbounds nuw (%struct.ziggy, ptr @bolshevic, i32 0, i32 1), align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %3)
  %4 = load i32, ptr getelementptr inbounds nuw (%struct.ziggy, ptr @bolshevic, i32 0, i32 2), align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %4)
  store ptr @bolshevic, ptr %tsar, align 8
  %5 = load ptr, ptr %tsar, align 8
  %a4 = getelementptr inbounds nuw %struct.ziggy, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %a4, align 4
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %6)
  %7 = load ptr, ptr %tsar, align 8
  %b6 = getelementptr inbounds nuw %struct.ziggy, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %b6, align 4
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %8)
  %9 = load ptr, ptr %tsar, align 8
  %c8 = getelementptr inbounds nuw %struct.ziggy, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %c8, align 4
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %10)
  store ptr getelementptr inbounds nuw (%struct.ziggy, ptr @bolshevic, i32 0, i32 1), ptr %b, align 8
  %11 = load ptr, ptr %b, align 8
  %12 = load i32, ptr %11, align 4
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %12)
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
