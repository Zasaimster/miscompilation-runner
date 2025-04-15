; 166079851731967137969934050307429313216
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/166079851731967137969934050307429313216.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/166079851731967137969934050307429313216.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type <{ i64, i32 }>

@.str = private unnamed_addr constant [32 x i8] c"This function is never called.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@c = internal global [6 x [3 x [10 x %struct.anon]]] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [12 x i8] c"index = %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %h) #0 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %g = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 0, ptr %g, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 0, ptr %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %0 = load i32, ptr %d, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %e, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc22, %for.body
  %1 = load i32, ptr %e, align 4
  %cmp2 = icmp slt i32 %1, 3
  br i1 %cmp2, label %for.body3, label %for.end24

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %f, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, ptr %f, align 4
  %cmp5 = icmp slt i32 %2, 10
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %3 = load i32, ptr %d, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [6 x [3 x [10 x %struct.anon]]], ptr @c, i64 0, i64 %idxprom
  %4 = load i32, ptr %e, align 4
  %idxprom7 = sext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds [3 x [10 x %struct.anon]], ptr %arrayidx, i64 0, i64 %idxprom7
  %5 = load i32, ptr %f, align 4
  %idxprom9 = sext i32 %5 to i64
  %arrayidx10 = getelementptr inbounds [10 x %struct.anon], ptr %arrayidx8, i64 0, i64 %idxprom9
  %bf.load = load i64, ptr %arrayidx10, align 4
  %bf.clear = and i64 %bf.load, 536870911
  %bf.cast = trunc i64 %bf.clear to i32
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %bf.cast)
  %6 = load i32, ptr %d, align 4
  %idxprom12 = sext i32 %6 to i64
  %arrayidx13 = getelementptr inbounds [6 x [3 x [10 x %struct.anon]]], ptr @c, i64 0, i64 %idxprom12
  %7 = load i32, ptr %e, align 4
  %idxprom14 = sext i32 %7 to i64
  %arrayidx15 = getelementptr inbounds [3 x [10 x %struct.anon]], ptr %arrayidx13, i64 0, i64 %idxprom14
  %8 = load i32, ptr %f, align 4
  %idxprom16 = sext i32 %8 to i64
  %arrayidx17 = getelementptr inbounds [10 x %struct.anon], ptr %arrayidx15, i64 0, i64 %idxprom16
  %b = getelementptr inbounds nuw %struct.anon, ptr %arrayidx17, i32 0, i32 1
  %bf.load18 = load i32, ptr %b, align 4
  %bf.clear19 = and i32 %bf.load18, 524287
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %bf.clear19)
  %9 = load i32, ptr %g, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  %10 = load i32, ptr %e, align 4
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %f, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %f, align 4
  br label %for.cond4, !llvm.loop !6

for.end:                                          ; preds = %for.cond4
  br label %for.inc22

for.inc22:                                        ; preds = %for.end
  %12 = load i32, ptr %e, align 4
  %inc23 = add nsw i32 %12, 1
  store i32 %inc23, ptr %e, align 4
  br label %for.cond1, !llvm.loop !8

for.end24:                                        ; preds = %for.cond1
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %13 = load i32, ptr %d, align 4
  %inc26 = add nsw i32 %13, 1
  store i32 %inc26, ptr %d, align 4
  br label %for.cond, !llvm.loop !9

for.end27:                                        ; preds = %for.cond
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = distinct !{!9, !7}
