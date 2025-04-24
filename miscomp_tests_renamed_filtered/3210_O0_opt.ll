; 156218002437920115316492282259101198733
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/156218002437920115316492282259101198733_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/156218002437920115316492282259101198733.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ziggy = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"a = %d\0A\00", align 1
@bolshevic = dso_local global %struct.ziggy zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"bolshevic.a = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"bolshevic.b = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"bolshevic.c = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"tsar->a = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"tsar->b = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"tsar->c = %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca ptr, align 8
  %tsar = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %0 = load i32, ptr %a, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %0)
  store ptr %a, ptr %b, align 8
  %1 = load ptr, ptr %b, align 8
  %2 = load i32, ptr %1, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %2)
  store i32 12, ptr @bolshevic, align 4
  store i32 34, ptr getelementptr inbounds nuw (%struct.ziggy, ptr @bolshevic, i32 0, i32 1), align 4
  store i32 56, ptr getelementptr inbounds nuw (%struct.ziggy, ptr @bolshevic, i32 0, i32 2), align 4
  %3 = load i32, ptr @bolshevic, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %3)
  %4 = load i32, ptr getelementptr inbounds nuw (%struct.ziggy, ptr @bolshevic, i32 0, i32 1), align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %4)
  %5 = load i32, ptr getelementptr inbounds nuw (%struct.ziggy, ptr @bolshevic, i32 0, i32 2), align 4
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %5)
  store ptr @bolshevic, ptr %tsar, align 8
  %6 = load ptr, ptr %tsar, align 8
  %a5 = getelementptr inbounds nuw %struct.ziggy, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %a5, align 4
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %7)
  %8 = load ptr, ptr %tsar, align 8
  %b7 = getelementptr inbounds nuw %struct.ziggy, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %b7, align 4
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %9)
  %10 = load ptr, ptr %tsar, align 8
  %c9 = getelementptr inbounds nuw %struct.ziggy, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %c9, align 4
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef %11)
  store ptr getelementptr inbounds nuw (%struct.ziggy, ptr @bolshevic, i32 0, i32 1), ptr %b, align 8
  %12 = load ptr, ptr %b, align 8
  %13 = load i32, ptr %12, align 4
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %13)
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
