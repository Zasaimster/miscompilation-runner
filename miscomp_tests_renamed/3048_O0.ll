; 144624391535992029721867232055800051790
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/144624391535992029721867232055800051790.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/144624391535992029721867232055800051790.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@N = dso_local global i32 1, align 4
@.str = private unnamed_addr constant [21 x i8] c"A is greater than 5\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(ptr noundef %a) #0 {
entry:
  %a.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  %0 = load i32, ptr @N, align 4
  %1 = zext i32 %0 to i64
  %2 = load i32, ptr @N, align 4
  %conv = trunc i32 %2 to i8
  %3 = load ptr, ptr %a.addr, align 8
  %4 = mul nsw i64 1, %1
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %4
  %arrayidx1 = getelementptr inbounds i8, ptr %arrayidx, i64 0
  store i8 %conv, ptr %arrayidx1, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 4, ptr @N, align 4
  %0 = load i32, ptr @N, align 4
  %mul = mul nsw i32 2, %0
  %conv = sext i32 %mul to i64
  %1 = alloca i8, i64 %conv, align 16
  store ptr %1, ptr %x, align 8
  %2 = load ptr, ptr %x, align 8
  %3 = load i32, ptr @N, align 4
  %mul1 = mul nsw i32 2, %3
  %conv2 = sext i32 %mul1 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %conv2, i1 false)
  %4 = load ptr, ptr %x, align 8
  call void @bar(ptr noundef %4)
  %5 = load i32, ptr @N, align 4
  %cmp = icmp sgt i32 %5, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
