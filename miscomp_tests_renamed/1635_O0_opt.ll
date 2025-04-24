; 129225502319784459245559092510651835039
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/129225502319784459245559092510651835039_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/129225502319784459245559092510651835039.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i8 0, align 1
@a = dso_local global i8 0, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test1() #0 {
entry:
  %c = alloca i32, align 4
  store i32 0, ptr %c, align 4
  %call = call i32 (...) @doNothing()
  %shr = ashr i32 %call, 9
  ret i32 %shr
}

declare i32 @doNothing(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2() #0 {
entry:
  %c = alloca i32, align 4
  store i32 -1, ptr %c, align 4
  %0 = load i8, ptr @b, align 1
  %conv = zext i8 %0 to i32
  %1 = load i32, ptr %c, align 4
  %xor = xor i32 %conv, %1
  %shr = lshr i32 %xor, 9
  ret i32 %shr
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i8 0, ptr @a, align 1
  %call = call i32 @test1()
  %cmp = icmp ne i32 %call, 8388607
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  store i8 64, ptr @a, align 1
  %call1 = call i32 @test1()
  %cmp2 = icmp ne i32 %call1, 8388607
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end4:                                          ; preds = %if.end
  store i8 -128, ptr @a, align 1
  %call5 = call i32 @test1()
  %0 = load i8, ptr @a, align 1
  %conv = sext i8 %0 to i32
  %cmp6 = icmp slt i32 %conv, 0
  %conv7 = zext i1 %cmp6 to i32
  %cmp8 = icmp ne i32 %call5, %conv7
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end4
  br i1 false, label %if.then10, label %if.end11

cond.false:                                       ; preds = %if.end4
  br i1 true, label %if.then10, label %if.end11

if.then10:                                        ; preds = %cond.false, %cond.true
  call void @abort() #3
  unreachable

if.end11:                                         ; preds = %cond.false, %cond.true
  store i8 -1, ptr @a, align 1
  %call12 = call i32 @test1()
  %1 = load i8, ptr @a, align 1
  %conv13 = sext i8 %1 to i32
  %cmp14 = icmp slt i32 %conv13, 0
  %conv15 = zext i1 %cmp14 to i32
  %cmp16 = icmp ne i32 %call12, %conv15
  br i1 %cmp16, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %if.end11
  br i1 false, label %if.then20, label %if.end21

cond.false19:                                     ; preds = %if.end11
  br i1 true, label %if.then20, label %if.end21

if.then20:                                        ; preds = %cond.false19, %cond.true18
  call void @abort() #3
  unreachable

if.end21:                                         ; preds = %cond.false19, %cond.true18
  store i8 0, ptr @b, align 1
  %call22 = call i32 @test2()
  %cmp23 = icmp ne i32 %call22, 8388607
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end21
  call void @abort() #3
  unreachable

if.end26:                                         ; preds = %if.end21
  store i8 64, ptr @b, align 1
  %call27 = call i32 @test2()
  %cmp28 = icmp ne i32 %call27, 8388607
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end26
  call void @abort() #3
  unreachable

if.end31:                                         ; preds = %if.end26
  store i8 -128, ptr @b, align 1
  %call32 = call i32 @test2()
  %cmp33 = icmp ne i32 %call32, 8388607
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end31
  call void @abort() #3
  unreachable

if.end36:                                         ; preds = %if.end31
  store i8 -1, ptr @b, align 1
  %call37 = call i32 @test2()
  %cmp38 = icmp ne i32 %call37, 8388607
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end36
  call void @abort() #3
  unreachable

if.end41:                                         ; preds = %if.end36
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
