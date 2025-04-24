; 135695406976091277535107478890270029149
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/135695406976091277535107478890270029149.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/135695406976091277535107478890270029149.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp = dso_local global ptr null, align 8
@m = dso_local global i64 0, align 8
@main.r = internal global [64 x i64] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %rop, ptr noundef %r) #0 {
entry:
  %rop.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %rs1 = alloca i32, align 4
  %rs2 = alloca i32, align 4
  %rd = alloca i32, align 4
  store i32 %rop, ptr %rop.addr, align 4
  store ptr %r, ptr %r.addr, align 8
  br label %top

top:                                              ; preds = %if.then, %entry
  store i32 5, ptr %rs2, align 4
  %0 = load i32, ptr %rop.addr, align 4
  %shr = lshr i32 %0, 9
  %and = and i32 %shr, 511
  store i32 %and, ptr %rs1, align 4
  %1 = load i32, ptr %rop.addr, align 4
  %and1 = and i32 %1, 511
  store i32 %and1, ptr %rd, align 4
  %2 = load ptr, ptr @cp, align 8
  store i64 1, ptr %2, align 8
  %3 = load ptr, ptr %r.addr, align 8
  %4 = load i32, ptr %rs1, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds nuw i64, ptr %3, i64 %idxprom
  %5 = load i64, ptr %arrayidx, align 8
  %6 = load ptr, ptr %r.addr, align 8
  %7 = load i32, ptr %rs2, align 4
  %idxprom2 = zext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %6, i64 %idxprom2
  %8 = load i64, ptr %arrayidx3, align 8
  %add = add i64 %5, %8
  store i64 %add, ptr @m, align 8
  %9 = load ptr, ptr @cp, align 8
  store i64 2, ptr %9, align 8
  call void @foo()
  %10 = load i32, ptr %rd, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %top
  br label %top

if.end:                                           ; preds = %top
  %11 = load ptr, ptr %r.addr, align 8
  %12 = load i32, ptr %rd, align 4
  %idxprom4 = zext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %11, i64 %idxprom4
  store i64 1, ptr %arrayidx5, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %cr = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store ptr %cr, ptr @cp, align 8
  store i64 47, ptr getelementptr inbounds ([64 x i64], ptr @main.r, i64 0, i64 4), align 16
  store i64 11, ptr getelementptr inbounds ([64 x i64], ptr @main.r, i64 0, i64 8), align 16
  call void @bar(i32 noundef 67110927, ptr noundef @main.r)
  %0 = load i64, ptr @m, align 8
  %cmp = icmp ne i64 %0, 58
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
