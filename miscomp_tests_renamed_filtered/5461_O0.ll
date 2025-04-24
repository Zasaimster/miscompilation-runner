; 196868148913602875142951493499150628444
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/196868148913602875142951493499150628444.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/196868148913602875142951493499150628444.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(ptr noundef %bufp) #0 {
entry:
  %bufp.addr = alloca ptr, align 8
  %x = alloca i32, align 4
  store ptr %bufp, ptr %bufp.addr, align 8
  store i32 80, ptr %x, align 4
  %0 = load i32, ptr %x, align 4
  %tobool = icmp ne i32 %0, 0
  %1 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 97, i32 98
  %conv = trunc i32 %cond to i8
  %2 = load ptr, ptr %bufp.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %bufp.addr, align 8
  store i8 %conv, ptr %2, align 1
  %conv1 = sext i8 %conv to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bufp() #0 {
entry:
  ret i32 42
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  %call = call i32 @foo(ptr noundef %x)
  %cmp = icmp ne i32 %call, 97
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
