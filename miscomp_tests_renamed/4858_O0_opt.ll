; 160366367579893725667418624959908509205
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/160366367579893725667418624959908509205_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/160366367579893725667418624959908509205.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@argp = internal global ptr @.str, align 8
@.str = private unnamed_addr constant [10 x i8] c"pr36321.x\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noundef %str) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %len2 = alloca i32, align 4
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  %0 = load i32, ptr %len2, align 4
  %mul = mul nsw i32 %0, 3
  %conv = sext i32 %mul to i64
  %1 = alloca i8, i64 %conv, align 16
  %2 = ptrtoint ptr %1 to i32
  store i32 %2, ptr %len2, align 4
  %3 = alloca i8, i64 0, align 16
  store ptr %3, ptr %a, align 8
  %4 = load i32, ptr %len2, align 4
  %mul1 = mul nsw i32 %4, 3
  %conv2 = sext i32 %mul1 to i64
  %5 = alloca i8, i64 %conv2, align 16
  store ptr %5, ptr %b, align 8
  %6 = load ptr, ptr %a, align 8
  %7 = load ptr, ptr %b, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %6 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv3 = trunc i64 %sub.ptr.sub to i32
  %8 = load i32, ptr %len2, align 4
  %mul4 = mul nsw i32 %8, 3
  %cmp = icmp slt i32 %conv3, %mul4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load volatile ptr, ptr @argp, align 8
  call void @foo(ptr noundef %0)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
