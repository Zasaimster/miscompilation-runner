; 183938255556918538381468598370178441231
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/183938255556918538381468598370178441231.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/183938255556918538381468598370178441231.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Hello World\0A\00", align 1
@x = dso_local global i32 0, align 4
@y = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1() #0 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %call = call i32 (...) @uselessFunction()
  store i32 %call, ptr %x, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 %call1, ptr %y, align 4
  %0 = load i32, ptr %x, align 4
  %1 = load i32, ptr %y, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %x, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %x, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %y, align 4
  %inc2 = add nsw i32 %3, 1
  store i32 %inc2, ptr %y, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  %cmp3 = icmp ne i32 %cond, 2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %cond.end
  %4 = load i32, ptr %x, align 4
  %cmp4 = icmp ne i32 %4, 3
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @abort() #4
  unreachable

if.end6:                                          ; preds = %if.end
  %5 = load i32, ptr %y, align 4
  %cmp7 = icmp ne i32 %5, 3
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @abort() #4
  unreachable

if.end9:                                          ; preds = %if.end6
  ret void
}

declare i32 @uselessFunction(...) #1

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2() #0 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store i32 3, ptr %x, align 4
  store i32 2, ptr %y, align 4
  %0 = load i32, ptr %x, align 4
  %1 = load i32, ptr %y, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %x, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %x, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %y, align 4
  %inc1 = add nsw i32 %3, 1
  store i32 %inc1, ptr %y, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  store i32 %cond, ptr %z, align 4
  %4 = load i32, ptr %z, align 4
  %cmp2 = icmp ne i32 %4, 2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %cond.end
  %5 = load i32, ptr %x, align 4
  %cmp3 = icmp ne i32 %5, 3
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @abort() #4
  unreachable

if.end5:                                          ; preds = %if.end
  %6 = load i32, ptr %y, align 4
  %cmp6 = icmp ne i32 %6, 3
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @abort() #4
  unreachable

if.end8:                                          ; preds = %if.end5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3() #0 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  store i32 3, ptr %x, align 4
  store i32 2, ptr %y, align 4
  store i32 3, ptr %xx, align 4
  store i32 2, ptr %yy, align 4
  %0 = load i32, ptr %xx, align 4
  %1 = load i32, ptr %yy, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %x, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %x, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %y, align 4
  %inc1 = add nsw i32 %3, 1
  store i32 %inc1, ptr %y, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  %cmp2 = icmp ne i32 %cond, 2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %cond.end
  %4 = load i32, ptr %x, align 4
  %cmp3 = icmp ne i32 %4, 3
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @abort() #4
  unreachable

if.end5:                                          ; preds = %if.end
  %5 = load i32, ptr %y, align 4
  %cmp6 = icmp ne i32 %5, 3
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @abort() #4
  unreachable

if.end8:                                          ; preds = %if.end5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test4() #0 {
entry:
  call void @init_xy()
  %0 = load i32, ptr @x, align 4
  %1 = load i32, ptr @y, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr @x, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @x, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr @y, align 4
  %inc1 = add nsw i32 %3, 1
  store i32 %inc1, ptr @y, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  %cmp2 = icmp ne i32 %cond, 2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %cond.end
  %4 = load i32, ptr @x, align 4
  %cmp3 = icmp ne i32 %4, 3
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @abort() #4
  unreachable

if.end5:                                          ; preds = %if.end
  %5 = load i32, ptr @y, align 4
  %cmp6 = icmp ne i32 %5, 3
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @abort() #4
  unreachable

if.end8:                                          ; preds = %if.end5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_xy() #0 {
entry:
  store i32 3, ptr @x, align 4
  store i32 2, ptr @y, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test5() #0 {
entry:
  %z = alloca i32, align 4
  call void @init_xy()
  %0 = load i32, ptr @x, align 4
  %1 = load i32, ptr @y, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr @x, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @x, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr @y, align 4
  %inc1 = add nsw i32 %3, 1
  store i32 %inc1, ptr @y, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  store i32 %cond, ptr %z, align 4
  %4 = load i32, ptr %z, align 4
  %cmp2 = icmp ne i32 %4, 2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %cond.end
  %5 = load i32, ptr @x, align 4
  %cmp3 = icmp ne i32 %5, 3
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @abort() #4
  unreachable

if.end5:                                          ; preds = %if.end
  %6 = load i32, ptr @y, align 4
  %cmp6 = icmp ne i32 %6, 3
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @abort() #4
  unreachable

if.end8:                                          ; preds = %if.end5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test6() #0 {
entry:
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  %z = alloca i32, align 4
  store i32 3, ptr %xx, align 4
  store i32 2, ptr %yy, align 4
  call void @init_xy()
  %0 = load i32, ptr %xx, align 4
  %1 = load i32, ptr @y, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr @x, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @x, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr @y, align 4
  %inc1 = add nsw i32 %3, 1
  store i32 %inc1, ptr @y, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  store i32 %cond, ptr %z, align 4
  %4 = load i32, ptr %z, align 4
  %cmp2 = icmp ne i32 %4, 2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %cond.end
  %5 = load i32, ptr @x, align 4
  %cmp3 = icmp ne i32 %5, 3
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @abort() #4
  unreachable

if.end5:                                          ; preds = %if.end
  %6 = load i32, ptr @y, align 4
  %cmp6 = icmp ne i32 %6, 3
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @abort() #4
  unreachable

if.end8:                                          ; preds = %if.end5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @test1()
  call void @test2()
  call void @test3()
  call void @test4()
  call void @test5()
  call void @test6()
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
