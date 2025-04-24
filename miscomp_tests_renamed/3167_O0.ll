; 155380796231180366986995036126491659845
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/155380796231180366986995036126491659845.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/155380796231180366986995036126491659845.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %foo, i32 noundef %bar, i32 noundef %com) #0 {
entry:
  %foo.addr = alloca i32, align 4
  %bar.addr = alloca i32, align 4
  %com.addr = alloca i32, align 4
  %align = alloca i32, align 4
  store i32 %foo, ptr %foo.addr, align 4
  store i32 %bar, ptr %bar.addr, align 4
  store i32 %com, ptr %com.addr, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %sw.epilog
  %0 = load i32, ptr %bar.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body
  %1 = load i32, ptr %com.addr, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %2 = load i32, ptr %align, align 4
  ret i32 %2

if.end:                                           ; preds = %sw.bb
  store i8 0, ptr null, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %while.body
  br label %while.body
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @f(i32 noundef 0, i32 noundef 1, i32 noundef 1)
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
