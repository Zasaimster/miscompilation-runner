; 137874070132732333722715798588999496081
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/137874070132732333722715798588999496081.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/137874070132732333722715798588999496081.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"Start\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"End\0A\00", align 1
@f3.x = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @ff(i32 noundef %fname, i32 noundef %part, i32 noundef %nparts) #0 {
entry:
  %fname.addr = alloca i32, align 4
  %part.addr = alloca i32, align 4
  %nparts.addr = alloca i32, align 4
  store i32 %fname, ptr %fname.addr, align 4
  store i32 %part, ptr %part.addr, align 4
  store i32 %nparts, ptr %nparts.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @f1()
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end4

if.else:                                          ; preds = %entry
  store i32 2, ptr %fname.addr, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end15, %if.end4
  %call5 = call i32 @f3()
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i32, ptr %nparts.addr, align 4
  %tobool7 = icmp ne i32 %0, 0
  br i1 %tobool7, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %while.body
  %call8 = call i32 @f2()
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %land.lhs.true
  call void @f1()
  %1 = load i32, ptr %part.addr, align 4
  store i32 %1, ptr %nparts.addr, align 4
  %call11 = call i32 @f3()
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then10
  call void @f1()
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.then10
  call void @f1()
  br label %while.end

if.end15:                                         ; preds = %land.lhs.true, %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.end14, %while.cond
  %2 = load i32, ptr %nparts.addr, align 4
  %tobool16 = icmp ne i32 %2, 0
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %while.end
  call void @f1()
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %while.end
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f1() #0 {
entry:
  call void @abort() #3
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f3() #0 {
entry:
  %0 = load i32, ptr @f3.x, align 4
  %tobool = icmp ne i32 %0, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr @f3.x, align 4
  %1 = load i32, ptr @f3.x, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f2() #0 {
entry:
  call void @abort() #3
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @ff(i32 noundef 0, i32 noundef 1, i32 noundef 0)
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
