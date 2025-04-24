; 16441752582182152639964654016122262835
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/16441752582182152639964654016122262835_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/16441752582182152639964654016122262835.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"Main function executed.\0A\00", align 1
@a = dso_local global i32 0, align 4
@b = dso_local global i16 0, align 2
@d = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  %call = call i32 (...) @printHello()
  %0 = zext i32 %call to i64
  %1 = call ptr @llvm.stacksave.p0()
  store ptr %1, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %0, align 16
  store i64 %0, ptr %__vla_expr0, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %cmp = icmp slt i32 %call1, 2
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  store i32 0, ptr @a, align 4
  %2 = load i16, ptr @b, align 2
  %conv = sext i16 %2 to i32
  %cmp2 = icmp eq i32 %conv, 28378
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i16, ptr @b, align 2
  %idxprom = sext i16 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  store i32 %4, ptr @a, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %5 = load i32, ptr @d, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i16, ptr @b, align 2
  %conv4 = sext i16 %6 to i32
  %tobool5 = icmp ne i32 %conv4, 0
  br i1 %tobool5, label %if.end10, label %if.then6

if.then6:                                         ; preds = %lor.lhs.false
  br label %for.cond7

for.cond7:                                        ; preds = %for.body9, %if.then6
  %7 = load i32, ptr @c, align 4
  %tobool8 = icmp ne i32 %7, 0
  br i1 %tobool8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  br label %for.cond7, !llvm.loop !6

for.end:                                          ; preds = %for.cond7
  br label %if.end10

if.end10:                                         ; preds = %for.end, %lor.lhs.false, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %8 = load i16, ptr @b, align 2
  %inc = add i16 %8, 1
  store i16 %inc, ptr @b, align 2
  br label %for.cond, !llvm.loop !8

for.end11:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  %9 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %9)
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

declare i32 @printHello(...) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #2

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }

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
