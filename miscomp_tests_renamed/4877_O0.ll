; 139188643996994408261760931798891603947
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/139188643996994408261760931798891603947.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/139188643996994408261760931798891603947.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adjust_template = type { i16, i16 }

@adjust = internal global %struct.adjust_template { i16 1, i16 1 }, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i16, align 2
  %y = alloca i16, align 2
  store i32 0, ptr %retval, align 4
  store i16 1, ptr %x, align 2
  store i16 1, ptr %y, align 2
  call void @adjust_xy(ptr noundef %x, ptr noundef %y)
  %0 = load i16, ptr %x, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp ne i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @adjust_xy(ptr noundef %x, ptr noundef %y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  store ptr %y, ptr %y.addr, align 8
  %0 = load i16, ptr @adjust, align 2
  %conv = sext i16 %0 to i32
  %1 = load ptr, ptr %x.addr, align 8
  %2 = load i16, ptr %1, align 2
  %conv1 = sext i16 %2 to i32
  %mul = mul nsw i32 %conv, %conv1
  %3 = load i16, ptr getelementptr inbounds nuw (%struct.adjust_template, ptr @adjust, i32 0, i32 1), align 2
  %conv2 = sext i16 %3 to i32
  %4 = load ptr, ptr %y.addr, align 8
  %5 = load i16, ptr %4, align 2
  %conv3 = sext i16 %5 to i32
  %mul4 = mul nsw i32 %conv2, %conv3
  %add = add nsw i32 %mul, %mul4
  %conv5 = trunc i32 %add to i16
  %6 = load ptr, ptr %x.addr, align 8
  store i16 %conv5, ptr %6, align 2
  ret void
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
