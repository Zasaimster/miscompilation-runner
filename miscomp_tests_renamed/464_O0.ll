; 192792589404208439437625191780330472568
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/192792589404208439437625191780330472568.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/192792589404208439437625191780330472568.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"bc\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"fgh\00", align 1
@a = dso_local global <{ ptr, ptr, ptr, ptr, [12 x ptr] }> <{ ptr null, ptr @.str, ptr @.str.1, ptr @.str.2, [12 x ptr] zeroinitializer }>, align 16
@.str.3 = private unnamed_addr constant [6 x i8] c"abcde\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(ptr noundef %x, ptr noundef %y, i64 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store ptr %x, ptr %x.addr, align 8
  store ptr %y, ptr %y.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store i64 0, ptr %j, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8
  %1 = load i64, ptr %n.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %x.addr, align 8
  %3 = load i64, ptr %j, align 8
  %add.ptr = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %4 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds nuw [16 x ptr], ptr @a, i64 0, i64 %4
  %5 = load ptr, ptr %arrayidx, align 8
  %6 = load i64, ptr %i, align 8
  %arrayidx1 = getelementptr inbounds nuw [16 x ptr], ptr @a, i64 0, i64 %6
  %7 = load ptr, ptr %arrayidx1, align 8
  %call = call i64 @strlen(ptr noundef %7) #3
  %call2 = call i32 @strncmp(ptr noundef %add.ptr, ptr noundef %5, i64 noundef %call) #3
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  %8 = load i64, ptr %i, align 8
  %arrayidx4 = getelementptr inbounds nuw [16 x ptr], ptr @a, i64 0, i64 %8
  %9 = load ptr, ptr %arrayidx4, align 8
  %call5 = call i64 @strlen(ptr noundef %9) #3
  %10 = load i64, ptr %j, align 8
  %add = add i64 %10, %call5
  store i64 %add, ptr %j, align 8
  %11 = load ptr, ptr %y.addr, align 8
  %tobool = icmp ne ptr %11, null
  br i1 %tobool, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %12 = load ptr, ptr %y.addr, align 8
  %call7 = call i64 @strlen(ptr noundef %12) #3
  %13 = load i64, ptr %j, align 8
  %add8 = add i64 %13, %call7
  store i64 %add8, ptr %j, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %14 = load i64, ptr %i, align 8
  %inc = add i64 %14, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @foo(ptr noundef @.str.3, ptr noundef null, i64 noundef 3)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

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
