; 129066237199574296294892189035075048674
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/129066237199574296294892189035075048674_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/129066237199574296294892189035075048674.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type <{ i64, i32 }>

@.str = private unnamed_addr constant [19 x i8] c"This won't print.\0A\00", align 1
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
  %0 = load i32, ptr %h.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %g, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %h.addr, align 4
  %cmp1 = icmp sgt i32 %1, 10
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  store i32 0, ptr %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %if.end3
  %2 = load i32, ptr %d, align 4
  %cmp4 = icmp slt i32 %2, 6
  br i1 %cmp4, label %for.body, label %for.end33

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %e, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc28, %for.body
  %3 = load i32, ptr %e, align 4
  %cmp6 = icmp slt i32 %3, 3
  br i1 %cmp6, label %for.body7, label %for.end30

for.body7:                                        ; preds = %for.cond5
  store i32 0, ptr %f, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body7
  %4 = load i32, ptr %f, align 4
  %cmp9 = icmp slt i32 %4, 10
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %5 = load i32, ptr %d, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [6 x [3 x [10 x %struct.anon]]], ptr @c, i64 0, i64 %idxprom
  %6 = load i32, ptr %e, align 4
  %idxprom11 = sext i32 %6 to i64
  %arrayidx12 = getelementptr inbounds [3 x [10 x %struct.anon]], ptr %arrayidx, i64 0, i64 %idxprom11
  %7 = load i32, ptr %f, align 4
  %idxprom13 = sext i32 %7 to i64
  %arrayidx14 = getelementptr inbounds [10 x %struct.anon], ptr %arrayidx12, i64 0, i64 %idxprom13
  %bf.load = load i64, ptr %arrayidx14, align 4
  %bf.clear = and i64 %bf.load, 536870911
  %bf.cast = trunc i64 %bf.clear to i32
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %bf.cast)
  %8 = load i32, ptr %d, align 4
  %idxprom16 = sext i32 %8 to i64
  %arrayidx17 = getelementptr inbounds [6 x [3 x [10 x %struct.anon]]], ptr @c, i64 0, i64 %idxprom16
  %9 = load i32, ptr %e, align 4
  %idxprom18 = sext i32 %9 to i64
  %arrayidx19 = getelementptr inbounds [3 x [10 x %struct.anon]], ptr %arrayidx17, i64 0, i64 %idxprom18
  %10 = load i32, ptr %f, align 4
  %idxprom20 = sext i32 %10 to i64
  %arrayidx21 = getelementptr inbounds [10 x %struct.anon], ptr %arrayidx19, i64 0, i64 %idxprom20
  %b = getelementptr inbounds nuw %struct.anon, ptr %arrayidx21, i32 0, i32 1
  %bf.load22 = load i32, ptr %b, align 4
  %bf.clear23 = and i32 %bf.load22, 524287
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %bf.clear23)
  %11 = load i32, ptr %g, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then25, label %if.end27

if.then25:                                        ; preds = %for.body10
  %12 = load i32, ptr %e, align 4
  %call26 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %12)
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %for.body10
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %13 = load i32, ptr %f, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %f, align 4
  br label %for.cond8, !llvm.loop !6

for.end:                                          ; preds = %for.cond8
  br label %for.inc28

for.inc28:                                        ; preds = %for.end
  %14 = load i32, ptr %e, align 4
  %inc29 = add nsw i32 %14, 1
  store i32 %inc29, ptr %e, align 4
  br label %for.cond5, !llvm.loop !8

for.end30:                                        ; preds = %for.cond5
  br label %for.inc31

for.inc31:                                        ; preds = %for.end30
  %15 = load i32, ptr %d, align 4
  %inc32 = add nsw i32 %15, 1
  store i32 %inc32, ptr %d, align 4
  br label %for.cond, !llvm.loop !9

for.end33:                                        ; preds = %for.cond
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
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
