; 111307122320754360303100633881226178390
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/111307122320754360303100633881226178390.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/111307122320754360303100633881226178390.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Value of a: %d\0A\00", align 1
@q = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @foo(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %b = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  store i64 0, ptr %b, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %0)
  %add = add nsw i32 %call, 1
  %conv = sext i32 %add to i64
  %1 = inttoptr i64 %conv to ptr
  store ptr %1, ptr @q, align 8
  %2 = load i64, ptr %b, align 8
  ret i64 %2
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i16, align 2
  store i32 0, ptr %retval, align 4
  store i16 -256, ptr %a, align 2
  %call = call i64 @foo(ptr noundef %a)
  %cmp = icmp ne i64 %call, -256
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
