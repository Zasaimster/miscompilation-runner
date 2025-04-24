; 191722811719628643709117904697240012847
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/191722811719628643709117904697240012847.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/191722811719628643709117904697240012847.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"X is negative\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @fail1() #0 {
entry:
  call void @abort() #4
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @fail2() #0 {
entry:
  call void @abort() #4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fail3() #0 {
entry:
  call void @abort() #4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fail4() #0 {
entry:
  call void @abort() #4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  %0 = load i64, ptr %x.addr, align 8
  switch i64 %0, label %sw.default [
    i64 -6, label %sw.bb
    i64 0, label %sw.bb1
    i64 1, label %sw.bb2
    i64 2, label %sw.bb2
    i64 3, label %sw.bb3
    i64 4, label %sw.bb3
    i64 5, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @fail1()
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @fail2()
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry, %entry
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry, %entry, %entry
  call void @fail3()
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @fail4()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i64, ptr %x.addr, align 8
  %cmp = icmp sgt i64 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i64, ptr %x.addr, align 8
  switch i64 %2, label %sw.default8 [
    i64 -3, label %sw.bb4
    i64 0, label %sw.bb5
    i64 4, label %sw.bb5
    i64 1, label %sw.bb6
    i64 3, label %sw.bb6
    i64 2, label %sw.bb7
    i64 8, label %sw.bb7
  ]

sw.bb4:                                           ; preds = %if.end
  call void @fail1()
  br label %sw.epilog9

sw.bb5:                                           ; preds = %if.end, %if.end
  call void @fail2()
  br label %sw.epilog9

sw.bb6:                                           ; preds = %if.end, %if.end
  br label %sw.epilog9

sw.bb7:                                           ; preds = %if.end, %if.end
  call void @abort() #4
  unreachable

sw.default8:                                      ; preds = %if.end
  call void @fail4()
  br label %sw.epilog9

sw.epilog9:                                       ; preds = %sw.default8, %sw.bb6, %sw.bb5, %sw.bb4
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @foo(i64 noundef 1)
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
