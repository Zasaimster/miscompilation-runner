; 154224230595266420589938555116985001462
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/154224230595266420589938555116985001462.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/154224230595266420589938555116985001462.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i8, i8 }

@f = dso_local global %struct.fd { i8 5, i8 0 }, align 1
@.str = private unnamed_addr constant [30 x i8] c"This function has dead code.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @g() #0 {
entry:
  ret ptr @f
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @deadFunction() #0 {
entry:
  %z = alloca i32, align 4
  store i32 20, ptr %z, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @h() #0 {
entry:
  ret i32 -1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %f = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call ptr @g()
  store ptr %call, ptr %f, align 8
  %call1 = call i32 @h()
  %conv = trunc i32 %call1 to i8
  %0 = load ptr, ptr %f, align 8
  %b = getelementptr inbounds nuw %struct.fd, ptr %0, i32 0, i32 1
  store i8 %conv, ptr %b, align 1
  %1 = load ptr, ptr %f, align 8
  %a = getelementptr inbounds nuw %struct.fd, ptr %1, i32 0, i32 0
  %2 = load i8, ptr %a, align 1
  %conv2 = zext i8 %2 to i32
  %and = and i32 %conv2, 127
  %and3 = and i32 %and, -17
  %cmp = icmp sle i32 %and3, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

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
