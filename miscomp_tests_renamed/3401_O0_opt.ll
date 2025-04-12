; 128932770517947590448380808605188570347
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/128932770517947590448380808605188570347_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/128932770517947590448380808605188570347.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c":ab\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testFunction() #0 {
entry:
  %x = alloca double, align 8
  %y = alloca double, align 8
  %z = alloca double, align 8
  store double 1.050000e+01, ptr %x, align 8
  store double 2.070000e+01, ptr %y, align 8
  %0 = load double, ptr %x, align 8
  %1 = load double, ptr %y, align 8
  %add = fadd double %0, %1
  store double %add, ptr %z, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca ptr, align 8
  %lim = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store ptr @.str, ptr %s, align 8
  %0 = load ptr, ptr %s, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 3
  store ptr %add.ptr, ptr %lim, align 8
  %1 = load ptr, ptr %s, align 8
  %2 = load ptr, ptr %lim, align 8
  %call = call ptr @begfield(i32 noundef 58, ptr noundef %1, ptr noundef %2, i32 noundef 1, i32 noundef 1)
  %3 = load ptr, ptr %s, align 8
  %add.ptr1 = getelementptr inbounds i8, ptr %3, i64 2
  %cmp = icmp ne ptr %call, %add.ptr1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @begfield(i32 noundef %tab, ptr noundef %ptr, ptr noundef %lim, i32 noundef %sword, i32 noundef %schar) #0 {
entry:
  %tab.addr = alloca i32, align 4
  %ptr.addr = alloca ptr, align 8
  %lim.addr = alloca ptr, align 8
  %sword.addr = alloca i32, align 4
  %schar.addr = alloca i32, align 4
  store i32 %tab, ptr %tab.addr, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  store ptr %lim, ptr %lim.addr, align 8
  store i32 %sword, ptr %sword.addr, align 4
  store i32 %schar, ptr %schar.addr, align 4
  %0 = load i32, ptr %tab.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %1 = load ptr, ptr %ptr.addr, align 8
  %2 = load ptr, ptr %lim.addr, align 8
  %cmp = icmp ult ptr %1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i32, ptr %sword.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %sword.addr, align 4
  %tobool1 = icmp ne i32 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ]
  br i1 %4, label %while.body, label %while.end13

while.body:                                       ; preds = %land.end
  br label %while.cond2

while.cond2:                                      ; preds = %while.body8, %while.body
  %5 = load ptr, ptr %ptr.addr, align 8
  %6 = load ptr, ptr %lim.addr, align 8
  %cmp3 = icmp ult ptr %5, %6
  br i1 %cmp3, label %land.rhs4, label %land.end7

land.rhs4:                                        ; preds = %while.cond2
  %7 = load ptr, ptr %ptr.addr, align 8
  %8 = load i8, ptr %7, align 1
  %conv = sext i8 %8 to i32
  %9 = load i32, ptr %tab.addr, align 4
  %cmp5 = icmp ne i32 %conv, %9
  br label %land.end7

land.end7:                                        ; preds = %land.rhs4, %while.cond2
  %10 = phi i1 [ false, %while.cond2 ], [ %cmp5, %land.rhs4 ]
  br i1 %10, label %while.body8, label %while.end

while.body8:                                      ; preds = %land.end7
  %11 = load ptr, ptr %ptr.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %ptr.addr, align 8
  br label %while.cond2, !llvm.loop !6

while.end:                                        ; preds = %land.end7
  %12 = load ptr, ptr %ptr.addr, align 8
  %13 = load ptr, ptr %lim.addr, align 8
  %cmp9 = icmp ult ptr %12, %13
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %while.end
  %14 = load ptr, ptr %ptr.addr, align 8
  %incdec.ptr12 = getelementptr inbounds nuw i8, ptr %14, i32 1
  store ptr %incdec.ptr12, ptr %ptr.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then11, %while.end
  br label %while.cond, !llvm.loop !8

while.end13:                                      ; preds = %land.end
  br label %if.end16

if.else:                                          ; preds = %entry
  br label %while.body15

while.body15:                                     ; preds = %while.body15, %if.else
  br label %while.body15

if.end16:                                         ; preds = %while.end13
  %15 = load ptr, ptr %ptr.addr, align 8
  %16 = load i32, ptr %schar.addr, align 4
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, ptr %15, i64 %idx.ext
  %17 = load ptr, ptr %lim.addr, align 8
  %cmp17 = icmp ule ptr %add.ptr, %17
  br i1 %cmp17, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end16
  %18 = load i32, ptr %schar.addr, align 4
  %19 = load ptr, ptr %ptr.addr, align 8
  %idx.ext20 = sext i32 %18 to i64
  %add.ptr21 = getelementptr inbounds i8, ptr %19, i64 %idx.ext20
  store ptr %add.ptr21, ptr %ptr.addr, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end16
  %20 = load ptr, ptr %ptr.addr, align 8
  ret ptr %20
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { noreturn }

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
