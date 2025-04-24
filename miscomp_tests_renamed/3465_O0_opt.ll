; 160638817866511496307647264292525400958
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/160638817866511496307647264292525400958_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/160638817866511496307647264292525400958.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (...) @doNothing()
  call void @exit(i32 noundef 0) #4
  unreachable
}

declare i32 @doNothing(...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @h1() #0 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @h2(ptr noundef %e) #0 {
entry:
  %e.addr = alloca ptr, align 8
  store ptr %e, ptr %e.addr, align 8
  %0 = load ptr, ptr %e.addr, align 8
  %cmp = icmp ne ptr %0, @v
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g(ptr noundef %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %b = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %call = call i32 @h1()
  store i32 %call, ptr %i, align 4
  %0 = load i32, ptr %i, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %do.body
  %1 = load i32, ptr %i, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %call3 = call i32 @h1()
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end4
  %2 = load i32, ptr %i, align 4
  %cmp5 = icmp eq i32 %2, 1
  br i1 %cmp5, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  br label %do.body6

do.body6:                                         ; preds = %do.cond8, %do.end
  %call7 = call i32 @h2(ptr noundef @v)
  store i32 %call7, ptr %b, align 4
  br label %do.cond8

do.cond8:                                         ; preds = %do.body6
  %3 = load i32, ptr %i, align 4
  %cmp9 = icmp eq i32 %3, 5
  br i1 %cmp9, label %do.body6, label %do.end10, !llvm.loop !8

do.end10:                                         ; preds = %do.cond8
  %4 = load i32, ptr %i, align 4
  %cmp11 = icmp ne i32 %4, 2
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %do.end10
  %5 = load i32, ptr %b, align 4
  store i32 %5, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %do.end10
  %6 = load ptr, ptr %c.addr, align 8
  store i8 97, ptr %6, align 1
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then12, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i8, align 1
  %call = call i32 @g(ptr noundef %c)
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
