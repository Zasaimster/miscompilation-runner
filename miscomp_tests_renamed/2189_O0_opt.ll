; 170189938602342715603071972301533611735
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/170189938602342715603071972301533611735_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/170189938602342715603071972301533611735.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @g2(double noundef %f) #0 {
entry:
  %f.addr = alloca double, align 8
  store double %f, ptr %f.addr, align 8
  %0 = load double, ptr %f.addr, align 8
  %1 = load double, ptr %f.addr, align 8
  %mul = fmul double %0, %1
  %conv = fptosi double %mul to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @f(i64 noundef %i) #0 {
entry:
  %i.addr = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8
  %0 = load i64, ptr %i.addr, align 8
  %conv = sitofp i64 %0 to double
  %call = call i64 @g1(double noundef %conv)
  %1 = load i64, ptr %i.addr, align 8
  %conv1 = sitofp i64 %1 to double
  %call2 = call i64 @g2(double noundef %conv1)
  %cmp = icmp ne i64 %call, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %i.addr, align 8
  %conv4 = sitofp i64 %2 to double
  %call5 = call i64 @g2(double noundef %conv4)
  %conv6 = sitofp i64 %call5 to double
  ret double %conv6
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @g1(double noundef %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, ptr %x.addr, align 8
  %0 = load double, ptr %x.addr, align 8
  %conv = fptosi double %0 to i64
  %conv1 = sitofp i64 %conv to double
  %conv2 = fptosi double %conv1 to i64
  ret i64 %conv2
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call double @f(i64 noundef 123456789)
  %cmp = fcmp une double %call, 0x419D6F3454000000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call double @f(i64 noundef 123456789)
  %call2 = call i64 @g2(double noundef 0x419D6F3454000000)
  %conv = sitofp i64 %call2 to double
  %cmp3 = fcmp une double %call1, %conv
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end6:                                          ; preds = %if.end
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
