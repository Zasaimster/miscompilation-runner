; 103072165294180895780592830914775485598
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/103072165294180895780592830914775485598_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/103072165294180895780592830914775485598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@temporary_obstack = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ch = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @yylex()
  store i32 %call, ptr %ch, align 4
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @yylex() #0 {
entry:
  %ch = alloca i32, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end3, %entry
  %call = call i32 @input()
  store i32 %call, ptr %ch, align 4
  %0 = load i32, ptr %ch, align 4
  %call1 = call i32 @ISALNUM(i32 noundef %0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %1 = load i32, ptr %ch, align 4
  call void @obstack_1grow(ptr noundef @temporary_obstack, i32 noundef %1)
  br label %if.end3

if.else:                                          ; preds = %for.cond
  %2 = load i32, ptr %ch, align 4
  %cmp = icmp ne i32 %2, 95
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  br label %for.end

if.end:                                           ; preds = %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  br label %for.cond

for.end:                                          ; preds = %if.then2
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end
  %call4 = call i32 @input()
  store i32 %call4, ptr %ch, align 4
  %3 = load i32, ptr %ch, align 4
  %call5 = call i32 @ISALNUM(i32 noundef %3)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %do.body
  %4 = load i32, ptr %ch, align 4
  call void @obstack_1grow(ptr noundef @temporary_obstack, i32 noundef %4)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end8
  %5 = load i32, ptr %ch, align 4
  %cmp9 = icmp eq i32 %5, 95
  br i1 %cmp9, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %6 = load i32, ptr %ch, align 4
  ret i32 %6
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @input() #0 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ISALNUM(i32 noundef %ch) #0 {
entry:
  %ch.addr = alloca i32, align 4
  store i32 %ch, ptr %ch.addr, align 4
  %0 = load i32, ptr %ch.addr, align 4
  %cmp = icmp sge i32 %0, 65
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %ch.addr, align 4
  %cmp1 = icmp sle i32 %1, 90
  br i1 %cmp1, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load i32, ptr %ch.addr, align 4
  %cmp2 = icmp sge i32 %2, 97
  br i1 %cmp2, label %land.lhs.true3, label %lor.rhs

land.lhs.true3:                                   ; preds = %lor.lhs.false
  %3 = load i32, ptr %ch.addr, align 4
  %cmp4 = icmp sle i32 %3, 122
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true3, %lor.lhs.false
  %4 = load i32, ptr %ch.addr, align 4
  %cmp5 = icmp sge i32 %4, 48
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %5 = load i32, ptr %ch.addr, align 4
  %cmp6 = icmp sle i32 %5, 48
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %6 = phi i1 [ false, %lor.rhs ], [ %cmp6, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true3, %land.lhs.true
  %7 = phi i1 [ true, %land.lhs.true3 ], [ true, %land.lhs.true ], [ %6, %land.end ]
  %lor.ext = zext i1 %7 to i32
  ret i32 %lor.ext
}

; Function Attrs: noinline nounwind uwtable
define internal void @obstack_1grow(ptr noundef %ptr, i32 noundef %ch) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %ch.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  store i32 %ch, ptr %ch.addr, align 4
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

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
