; 122263528258491075600888954678611609618
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/122263528258491075600888954678611609618_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/122263528258491075600888954678611609618.c"
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
  %0 = load i32, ptr %ok.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %2 = load i32, ptr %y.addr, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, ptr %x.addr, align 4
  %4 = load i32, ptr %y.addr, align 4
  %cmp1 = icmp eq i32 %3, %4
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %land.lhs.true
  %5 = load i32, ptr %ok.addr, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.then2
  call void @abort() #2
  unreachable

if.end5:                                          ; preds = %if.then2
  br label %if.end9

if.else:                                          ; preds = %land.lhs.true, %if.end
  %6 = load i32, ptr %ok.addr, align 4
  %tobool6 = icmp ne i32 %6, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.else
  call void @abort() #2
  unreachable

if.end8:                                          ; preds = %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end5
  %7 = load i32, ptr %x.addr, align 4
  %8 = load i32, ptr %y.addr, align 4
  %cmp10 = icmp sle i32 %7, %8
  br i1 %cmp10, label %land.lhs.true11, label %if.else17

land.lhs.true11:                                  ; preds = %if.end9
  %9 = load i32, ptr %y.addr, align 4
  %10 = load i32, ptr %x.addr, align 4
  %cmp12 = icmp sle i32 %9, %10
  br i1 %cmp12, label %if.then13, label %if.else17

if.then13:                                        ; preds = %land.lhs.true11
  %11 = load i32, ptr %ok.addr, align 4
  %tobool14 = icmp ne i32 %11, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.then13
  call void @abort() #2
  unreachable

if.end16:                                         ; preds = %if.then13
  br label %if.end21

if.else17:                                        ; preds = %land.lhs.true11, %if.end9
  %12 = load i32, ptr %ok.addr, align 4
  %tobool18 = icmp ne i32 %12, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.else17
  call void @abort() #2
  unreachable

if.end20:                                         ; preds = %if.else17
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end16
  %13 = load i32, ptr %y.addr, align 4
  %14 = load i32, ptr %x.addr, align 4
  %cmp22 = icmp eq i32 %13, %14
  br i1 %cmp22, label %land.lhs.true23, label %if.else29

land.lhs.true23:                                  ; preds = %if.end21
  %15 = load i32, ptr %x.addr, align 4
  %16 = load i32, ptr %y.addr, align 4
  %cmp24 = icmp sle i32 %15, %16
  br i1 %cmp24, label %if.then25, label %if.else29

if.then25:                                        ; preds = %land.lhs.true23
  %17 = load i32, ptr %ok.addr, align 4
  %tobool26 = icmp ne i32 %17, 0
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.then25
  call void @abort() #2
  unreachable

if.end28:                                         ; preds = %if.then25
  br label %if.end33

if.else29:                                        ; preds = %land.lhs.true23, %if.end21
  %18 = load i32, ptr %ok.addr, align 4
  %tobool30 = icmp ne i32 %18, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.else29
  call void @abort() #2
  unreachable

if.end32:                                         ; preds = %if.else29
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end28
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
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
