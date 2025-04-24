; 151583831640078723580274311823480892313
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/151583831640078723580274311823480892313_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/151583831640078723580274311823480892313.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ieq(i32 noundef %x, i32 noundef %y, i32 noundef %ok) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %ok.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %ok, ptr %ok.addr, align 4
  %call = call i32 @ieq(i32 noundef 3, i32 noundef 3, i32 noundef 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %y.addr, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, ptr %ok.addr, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end6

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, ptr %ok.addr, align 4
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.else
  call void @abort() #2
  unreachable

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  %4 = load i32, ptr %x.addr, align 4
  %5 = load i32, ptr %y.addr, align 4
  %cmp7 = icmp sle i32 %4, %5
  br i1 %cmp7, label %land.lhs.true8, label %if.else14

land.lhs.true8:                                   ; preds = %if.end6
  %6 = load i32, ptr %x.addr, align 4
  %7 = load i32, ptr %y.addr, align 4
  %cmp9 = icmp eq i32 %6, %7
  br i1 %cmp9, label %if.then10, label %if.else14

if.then10:                                        ; preds = %land.lhs.true8
  %8 = load i32, ptr %ok.addr, align 4
  %tobool11 = icmp ne i32 %8, 0
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.then10
  call void @abort() #2
  unreachable

if.end13:                                         ; preds = %if.then10
  br label %if.end18

if.else14:                                        ; preds = %land.lhs.true8, %if.end6
  %9 = load i32, ptr %ok.addr, align 4
  %tobool15 = icmp ne i32 %9, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.else14
  call void @abort() #2
  unreachable

if.end17:                                         ; preds = %if.else14
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end13
  %10 = load i32, ptr %x.addr, align 4
  %11 = load i32, ptr %y.addr, align 4
  %cmp19 = icmp sle i32 %10, %11
  br i1 %cmp19, label %land.lhs.true20, label %if.else26

land.lhs.true20:                                  ; preds = %if.end18
  %12 = load i32, ptr %y.addr, align 4
  %13 = load i32, ptr %x.addr, align 4
  %cmp21 = icmp sle i32 %12, %13
  br i1 %cmp21, label %if.then22, label %if.else26

if.then22:                                        ; preds = %land.lhs.true20
  %14 = load i32, ptr %ok.addr, align 4
  %tobool23 = icmp ne i32 %14, 0
  br i1 %tobool23, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.then22
  call void @abort() #2
  unreachable

if.end25:                                         ; preds = %if.then22
  br label %if.end30

if.else26:                                        ; preds = %land.lhs.true20, %if.end18
  %15 = load i32, ptr %ok.addr, align 4
  %tobool27 = icmp ne i32 %15, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.else26
  call void @abort() #2
  unreachable

if.end29:                                         ; preds = %if.else26
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end25
  %16 = load i32, ptr %y.addr, align 4
  %17 = load i32, ptr %x.addr, align 4
  %cmp31 = icmp eq i32 %16, %17
  br i1 %cmp31, label %land.lhs.true32, label %if.else38

land.lhs.true32:                                  ; preds = %if.end30
  %18 = load i32, ptr %x.addr, align 4
  %19 = load i32, ptr %y.addr, align 4
  %cmp33 = icmp sle i32 %18, %19
  br i1 %cmp33, label %if.then34, label %if.else38

if.then34:                                        ; preds = %land.lhs.true32
  %20 = load i32, ptr %ok.addr, align 4
  %tobool35 = icmp ne i32 %20, 0
  br i1 %tobool35, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.then34
  call void @abort() #2
  unreachable

if.end37:                                         ; preds = %if.then34
  br label %if.end42

if.else38:                                        ; preds = %land.lhs.true32, %if.end30
  %21 = load i32, ptr %ok.addr, align 4
  %tobool39 = icmp ne i32 %21, 0
  br i1 %tobool39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.else38
  call void @abort() #2
  unreachable

if.end41:                                         ; preds = %if.else38
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end37
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ine(i32 noundef %x, i32 noundef %y, i32 noundef %ok) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %ok.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %ok, ptr %ok.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %y.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %y.addr, align 4
  %cmp1 = icmp sgt i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i32, ptr %ok.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end6

if.else:                                          ; preds = %lor.lhs.false
  %5 = load i32, ptr %ok.addr, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.else
  call void @abort() #2
  unreachable

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ilt(i32 noundef %x, i32 noundef %y, i32 noundef %ok) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %ok.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %ok, ptr %ok.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %y.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %y.addr, align 4
  %cmp1 = icmp ne i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, ptr %ok.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end6

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i32, ptr %ok.addr, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.else
  call void @abort() #2
  unreachable

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ile(i32 noundef %x, i32 noundef %y, i32 noundef %ok) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %ok.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %ok, ptr %ok.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %y.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %y.addr, align 4
  %cmp1 = icmp eq i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i32, ptr %ok.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end6

if.else:                                          ; preds = %lor.lhs.false
  %5 = load i32, ptr %ok.addr, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.else
  call void @abort() #2
  unreachable

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @igt(i32 noundef %x, i32 noundef %y, i32 noundef %ok) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %ok.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %ok, ptr %ok.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %y.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %y.addr, align 4
  %cmp1 = icmp ne i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, ptr %ok.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end6

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i32, ptr %ok.addr, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.else
  call void @abort() #2
  unreachable

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ige(i32 noundef %x, i32 noundef %y, i32 noundef %ok) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %ok.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %ok, ptr %ok.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %y.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %y.addr, align 4
  %cmp1 = icmp eq i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i32, ptr %ok.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end6

if.else:                                          ; preds = %lor.lhs.false
  %5 = load i32, ptr %ok.addr, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.else
  call void @abort() #2
  unreachable

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @ieq(i32 noundef 1, i32 noundef 4, i32 noundef 0)
  %call1 = call i32 @ieq(i32 noundef 3, i32 noundef 3, i32 noundef 1)
  %call2 = call i32 @ieq(i32 noundef 5, i32 noundef 2, i32 noundef 0)
  %call3 = call i32 @ine(i32 noundef 1, i32 noundef 4, i32 noundef 1)
  %call4 = call i32 @ine(i32 noundef 3, i32 noundef 3, i32 noundef 0)
  %call5 = call i32 @ine(i32 noundef 5, i32 noundef 2, i32 noundef 1)
  %call6 = call i32 @ilt(i32 noundef 1, i32 noundef 4, i32 noundef 1)
  %call7 = call i32 @ilt(i32 noundef 3, i32 noundef 3, i32 noundef 0)
  %call8 = call i32 @ilt(i32 noundef 5, i32 noundef 2, i32 noundef 0)
  %call9 = call i32 @ile(i32 noundef 1, i32 noundef 4, i32 noundef 1)
  %call10 = call i32 @ile(i32 noundef 3, i32 noundef 3, i32 noundef 1)
  %call11 = call i32 @ile(i32 noundef 5, i32 noundef 2, i32 noundef 0)
  %call12 = call i32 @igt(i32 noundef 1, i32 noundef 4, i32 noundef 0)
  %call13 = call i32 @igt(i32 noundef 3, i32 noundef 3, i32 noundef 0)
  %call14 = call i32 @igt(i32 noundef 5, i32 noundef 2, i32 noundef 1)
  %call15 = call i32 @ige(i32 noundef 1, i32 noundef 4, i32 noundef 0)
  %call16 = call i32 @ige(i32 noundef 3, i32 noundef 3, i32 noundef 1)
  %call17 = call i32 @ige(i32 noundef 5, i32 noundef 2, i32 noundef 1)
  ret i32 0
}

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
