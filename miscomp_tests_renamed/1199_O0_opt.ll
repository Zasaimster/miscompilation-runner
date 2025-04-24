; 121513262993717531104064928080394396492
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/121513262993717531104064928080394396492_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/121513262993717531104064928080394396492.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nums = dso_local global [3 x i64] [i64 -1, i64 2147483647, i64 -2147483648], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  %0 = load i64, ptr %x.addr, align 8
  %div = sdiv i64 %0, -2147483648
  ret i64 %div
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @r(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  %0 = load i64, ptr %x.addr, align 8
  %rem = srem i64 %0, -2147483648
  ret i64 %rem
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @std_eqn(i64 noundef %num, i64 noundef %denom, i64 noundef %quot, i64 noundef %rem) #0 {
entry:
  %num.addr = alloca i64, align 8
  %denom.addr = alloca i64, align 8
  %quot.addr = alloca i64, align 8
  %rem.addr = alloca i64, align 8
  store i64 %num, ptr %num.addr, align 8
  store i64 %denom, ptr %denom.addr, align 8
  store i64 %quot, ptr %quot.addr, align 8
  store i64 %rem, ptr %rem.addr, align 8
  %0 = load i64, ptr %quot.addr, align 8
  %mul = mul nsw i64 %0, -2147483648
  %1 = load i64, ptr %rem.addr, align 8
  %add = add nsw i64 %mul, %1
  %2 = load i64, ptr %num.addr, align 8
  %cmp = icmp eq i64 %add, %2
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  ret i64 %conv1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [3 x i64], ptr @nums, i64 0, i64 %idxprom
  %2 = load i64, ptr %arrayidx, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [3 x i64], ptr @nums, i64 0, i64 %idxprom2
  %4 = load i64, ptr %arrayidx3, align 8
  %call = call i64 @f(i64 noundef %4)
  %5 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [3 x i64], ptr @nums, i64 0, i64 %idxprom4
  %6 = load i64, ptr %arrayidx5, align 8
  %call6 = call i64 @r(i64 noundef %6)
  %call7 = call i64 @std_eqn(i64 noundef %2, i64 noundef -2147483648, i64 noundef %call, i64 noundef %call6)
  %cmp8 = icmp eq i64 %call7, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
