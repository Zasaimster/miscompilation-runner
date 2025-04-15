; 122837178285140754210427105200797126060
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/122837178285140754210427105200797126060.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/122837178285140754210427105200797126060.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
  store i32 2, ptr %fname.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %entry
  %call = call i32 @f3()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i32, ptr %nparts.addr, align 4
  %tobool1 = icmp ne i32 %0, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %while.body
  %call2 = call i32 @f2()
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end7

if.then:                                          ; preds = %land.lhs.true
  call void @f1()
  %1 = load i32, ptr %part.addr, align 4
  store i32 %1, ptr %nparts.addr, align 4
  %call4 = call i32 @f3()
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  call void @f1()
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  call void @f1()
  br label %while.end

if.end7:                                          ; preds = %land.lhs.true, %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.end, %while.cond
  %2 = load i32, ptr %nparts.addr, align 4
  %tobool8 = icmp ne i32 %2, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %while.end
  call void @f1()
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %while.end
  ret void
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
  call void @abort() #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f1() #0 {
entry:
  call void @abort() #2
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
declare void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

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
