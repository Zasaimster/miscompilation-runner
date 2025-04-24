; 175474511924019009649598118189100323346
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/175474511924019009649598118189100323346_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/175474511924019009649598118189100323346.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %i) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  %call = call i32 (i32, ...) @process(i32 noundef 100)
  switch i32 %call, label %sw.default [
    i32 -2, label %sw.bb
    i32 -1, label %sw.bb2
    i32 0, label %sw.bb3
    i32 1, label %sw.bb4
    i32 2, label %sw.bb5
    i32 3, label %sw.bb6
    i32 4, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 %call1, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  store i32 4, ptr %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  store i32 3, ptr %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %entry
  store i32 15, ptr %retval, align 4
  br label %return

sw.bb7:                                           ; preds = %entry
  store i32 9, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  call void @abort() #4
  unreachable

return:                                           ; preds = %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

declare i32 @process(...) #1

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @f(i32 noundef -1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
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
