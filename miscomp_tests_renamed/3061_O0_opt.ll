; 153708575404676234186830953604706252970
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/153708575404676234186830953604706252970_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/153708575404676234186830953604706252970.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bar\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(ptr noundef %x, i32 noundef %y, ptr noundef %z) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca i32, align 4
  %z.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  store i32 %y, ptr %y.addr, align 4
  store ptr %z, ptr %z.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @foo(i32 noundef %x, ptr noundef %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %a = alloca i64, align 8
  store i32 %x, ptr %x.addr, align 4
  store ptr %y, ptr %y.addr, align 8
  %0 = load i32, ptr %x.addr, align 4
  switch i32 %0, label %sw.default [
    i32 10, label %sw.bb
    i32 11, label %sw.bb1
    i32 12, label %sw.bb2
    i32 13, label %sw.bb3
    i32 14, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %y.addr, align 8
  %2 = load i64, ptr %1, align 8
  store i64 %2, ptr %a, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %3 = load ptr, ptr %y.addr, align 8
  %4 = load i64, ptr %3, align 8
  store i64 %4, ptr %a, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %5 = load ptr, ptr %y.addr, align 8
  %6 = load i64, ptr %5, align 8
  store i64 %6, ptr %a, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %7 = load ptr, ptr %y.addr, align 8
  %8 = load i64, ptr %7, align 8
  store i64 %8, ptr %a, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %9 = load ptr, ptr %y.addr, align 8
  %10 = load i64, ptr %9, align 8
  store i64 %10, ptr %a, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @bar(ptr noundef @.str, i32 noundef 1, ptr noundef @.str.1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %11 = load i64, ptr %a, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i64 24, ptr %i, align 8
  %call = call i64 @foo(i32 noundef 13, ptr noundef %i)
  %cmp = icmp ne i64 %call, 24
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
