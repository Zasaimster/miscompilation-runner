; 121208606590724369038288248278474961193
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/121208606590724369038288248278474961193_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/121208606590724369038288248278474961193.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(ptr noundef %bar) #0 {
entry:
  %retval = alloca i32, align 4
  %bar.addr = alloca ptr, align 8
  store ptr %bar, ptr %bar.addr, align 8
  %0 = load ptr, ptr %bar.addr, align 8
  store i32 8, ptr %0, align 4
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bugger() #0 {
entry:
  %oldDepth = alloca i32, align 4
  %newDepth = alloca i32, align 4
  %0 = load i32, ptr %oldDepth, align 4
  switch i32 %0, label %sw.default [
    i32 8, label %sw.bb
    i32 500, label %sw.bb
    i32 5000, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i32 8, ptr %newDepth, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i32 500, ptr %newDepth, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 17, ptr %newDepth, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  %1 = load i32, ptr %newDepth, align 4
  %2 = load i32, ptr %oldDepth, align 4
  %sub2 = sub nsw i32 %1, %2
  ret i32 %sub2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @bugger()
  %cmp = icmp ne i32 %call, 0
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
