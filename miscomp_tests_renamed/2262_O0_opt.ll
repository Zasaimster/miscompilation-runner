; 139414938500585422959314734808499687841
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/139414938500585422959314734808499687841_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/139414938500585422959314734808499687841.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"This branch is executed.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g(i32 noundef %i, i32 noundef %c, ptr noundef %ff, ptr noundef %p) #0 {
entry:
  %i.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %ff.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %t = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  store i32 %c, ptr %c.addr, align 4
  store ptr %ff, ptr %ff.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = load ptr, ptr %p.addr, align 8
  store i32 0, ptr %0, align 4
  %1 = load ptr, ptr %t, align 8
  %2 = load i32, ptr %1, align 4
  ret i32 %2
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %f = alloca %struct.f, align 4
  store i32 0, ptr %retval, align 4
  %i = getelementptr inbounds nuw %struct.f, ptr %f, i32 0, i32 0
  store i32 1, ptr %i, align 4
  %i1 = getelementptr inbounds nuw %struct.f, ptr %f, i32 0, i32 0
  %call = call i32 @g(i32 noundef 5, i32 noundef 0, ptr noundef %f, ptr noundef %i1)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
