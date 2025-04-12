; 173796227304217836350122916456281191180
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/173796227304217836350122916456281191180.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/173796227304217836350122916456281191180.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"I'm not used\0A\00", align 1
@g = internal global i16 0, align 2
@p = internal global i16 0, align 2
@e = dso_local global i8 0, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @notUsed() #0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @frob(i16 noundef zeroext %a, i16 noundef zeroext %b) #0 {
entry:
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  store i16 %a, ptr %a.addr, align 2
  store i16 %b, ptr %b.addr, align 2
  %0 = load i16, ptr %a.addr, align 2
  store i16 %0, ptr @g, align 2
  %1 = load i16, ptr %b.addr, align 2
  store i16 %1, ptr @p, align 2
  %call = call zeroext i16 @inc_g()
  %call1 = call signext i8 @ring_empty()
  ret i8 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i16 @inc_g() #0 {
entry:
  %call = call i32 (...) @next_g()
  %conv = trunc i32 %call to i16
  store i16 %conv, ptr @g, align 2
  ret i16 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal signext i8 @ring_empty() #0 {
entry:
  %retval = alloca i8, align 1
  %call = call zeroext i16 @curr_p()
  %conv = zext i16 %call to i32
  %call1 = call zeroext i16 @curr_g()
  %conv2 = zext i16 %call1 to i32
  %cmp = icmp eq i32 %conv, %conv2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 1, ptr %retval, align 1
  br label %return

if.else:                                          ; preds = %entry
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %0 = load i8, ptr %retval, align 1
  ret i8 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i16 @get_n() #0 {
entry:
  %n = alloca i16, align 2
  %org_g = alloca i16, align 2
  store i16 0, ptr %n, align 2
  %call = call zeroext i16 @curr_g()
  store i16 %call, ptr %org_g, align 2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call1 = call signext i8 @ring_empty()
  %tobool = icmp ne i8 %call1, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %0 = load i16, ptr %n, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %1 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %1, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call3 = call zeroext i16 @inc_g()
  %2 = load i16, ptr %n, align 2
  %inc = add i16 %2, 1
  store i16 %inc, ptr %n, align 2
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %3 = load i16, ptr %n, align 2
  ret i16 %3
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i16 @curr_g() #0 {
entry:
  %0 = load i16, ptr @g, align 2
  ret i16 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i8 3, ptr @e, align 1
  %call = call signext i8 @frob(i16 noundef zeroext 0, i16 noundef zeroext 2)
  %conv = sext i8 %call to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i16, ptr @g, align 2
  %conv2 = zext i16 %0 to i32
  %cmp3 = icmp ne i32 %conv2, 1
  br i1 %cmp3, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %1 = load i16, ptr @p, align 2
  %conv6 = zext i16 %1 to i32
  %cmp7 = icmp ne i32 %conv6, 2
  br i1 %cmp7, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %2 = load i8, ptr @e, align 1
  %conv10 = zext i8 %2 to i32
  %cmp11 = icmp ne i32 %conv10, 3
  br i1 %cmp11, label %if.then, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = call zeroext i16 @get_n()
  %conv15 = zext i16 %call14 to i32
  %cmp16 = icmp ne i32 %conv15, 1
  br i1 %cmp16, label %if.then, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false13
  %3 = load i16, ptr @g, align 2
  %conv19 = zext i16 %3 to i32
  %cmp20 = icmp ne i32 %conv19, 2
  br i1 %cmp20, label %if.then, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %4 = load i16, ptr @p, align 2
  %conv23 = zext i16 %4 to i32
  %cmp24 = icmp ne i32 %conv23, 2
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false22, %lor.lhs.false18, %lor.lhs.false13, %lor.lhs.false9, %lor.lhs.false5, %lor.lhs.false, %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false22
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

declare i32 @next_g(...) #1

; Function Attrs: noinline nounwind uwtable
define internal zeroext i16 @curr_p() #0 {
entry:
  %0 = load i16, ptr @p, align 2
  ret i16 %0
}

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
