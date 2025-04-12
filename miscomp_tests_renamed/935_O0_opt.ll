; 1507295218781938619051823569196057653
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/1507295218781938619051823569196057653_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/1507295218781938619051823569196057653.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %x, double noundef %d1, double noundef %d2, double noundef %d3) #0 {
entry:
  %x.addr = alloca i32, align 4
  %d1.addr = alloca double, align 8
  %d2.addr = alloca double, align 8
  %d3.addr = alloca double, align 8
  store i32 %x, ptr %x.addr, align 4
  store double %d1, ptr %d1.addr, align 8
  store double %d2, ptr %d2.addr, align 8
  store double %d3, ptr %d3.addr, align 8
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g(ptr noundef %b, ptr noundef %s, double noundef %x, double noundef %y, i32 noundef %i, i32 noundef %j) #0 {
entry:
  %b.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8
  store ptr %s, ptr %s.addr, align 8
  store double %x, ptr %x.addr, align 8
  store double %y, ptr %y.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  store i32 %j, ptr %j.addr, align 4
  call void @abort() #3
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @f(i32 noundef 3, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00)
  %call1 = call i32 @f(i32 noundef 4, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00)
  %call2 = call i32 @g(ptr noundef @.str, ptr noundef @.str, double noundef 1.000000e+00, double noundef 2.000000e+00, i32 noundef %call, i32 noundef %call1)
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
