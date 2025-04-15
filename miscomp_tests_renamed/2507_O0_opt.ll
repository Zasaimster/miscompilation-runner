; 106625382691995960242663596845816108709
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/106625382691995960242663596845816108709_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/106625382691995960242663596845816108709.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [6 x i8] c"12345\00", align 1
@b = dso_local global [6 x i8] c"12345\00", align 1
@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @loop(ptr noundef %pz, ptr noundef %pzDta) #0 {
entry:
  %pz.addr = alloca ptr, align 8
  %pzDta.addr = alloca ptr, align 8
  store ptr %pz, ptr %pz.addr, align 8
  store ptr %pzDta, ptr %pzDta.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %loopDone2

loopDone2:                                        ; preds = %entry
  %0 = load ptr, ptr %pz.addr, align 8
  %sub.ptr.rhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.sub = sub i64 ptrtoint (ptr @a to i64), %sub.ptr.rhs.cast
  %1 = load ptr, ptr %pzDta.addr, align 8
  %sub.ptr.rhs.cast1 = ptrtoint ptr %1 to i64
  %sub.ptr.sub2 = sub i64 ptrtoint (ptr @b to i64), %sub.ptr.rhs.cast1
  %cmp = icmp ne i64 %sub.ptr.sub, %sub.ptr.sub2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %loopDone2
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %loopDone2
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @loop(ptr noundef @a, ptr noundef @b)
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
