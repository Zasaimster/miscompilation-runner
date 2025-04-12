; 103318331145511091135553920706536676812
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/103318331145511091135553920706536676812_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/103318331145511091135553920706536676812.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aim_callhandler.i = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @aim_callhandler(i32 noundef %sess, i32 noundef %conn, i16 noundef zeroext %family, i16 noundef zeroext %type) #0 {
entry:
  %retval = alloca i32, align 4
  %sess.addr = alloca i32, align 4
  %conn.addr = alloca i32, align 4
  %family.addr = alloca i16, align 2
  %type.addr = alloca i16, align 2
  store i32 %sess, ptr %sess.addr, align 4
  store i32 %conn, ptr %conn.addr, align 4
  store i16 %family, ptr %family.addr, align 2
  store i16 %type, ptr %type.addr, align 2
  %0 = load i32, ptr %conn.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 (...) @deadFunction()
  %cmp = icmp eq i32 %call, 65535
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end2:                                          ; preds = %if.end
  %1 = load i32, ptr @aim_callhandler.i, align 4
  %cmp3 = icmp sge i32 %1, 1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end2
  call void @abort() #4
  unreachable

if.end5:                                          ; preds = %if.end2
  %2 = load i32, ptr @aim_callhandler.i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @aim_callhandler.i, align 4
  %3 = load i32, ptr %sess.addr, align 4
  %4 = load i32, ptr %conn.addr, align 4
  %5 = load i16, ptr %family.addr, align 2
  %call6 = call i32 @aim_callhandler(i32 noundef %3, i32 noundef %4, i16 noundef zeroext %5, i16 noundef zeroext -1)
  store i32 %call6, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then1, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

declare i32 @deadFunction(...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @aim_callhandler(i32 noundef 0, i32 noundef 1, i16 noundef zeroext 0, i16 noundef zeroext 0)
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
