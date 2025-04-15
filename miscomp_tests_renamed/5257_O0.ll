; 144661422840472007791842249540738939773
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/144661422840472007791842249540738939773.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/144661422840472007791842249540738939773.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Finished!\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"signed char\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"unsigned short\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"long double\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"short real\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"stringptr\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"character\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"logical*1\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"logical*2\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"logical*4\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"logical\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"complex\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"double complex\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"integer*1\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"integer*2\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"integer*4\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"wchar\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"long long\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"unsigned long long\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"logical*8\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"integer*8\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @stab_xcoff_builtin_type(i32 noundef %typenum) #0 {
entry:
  %retval = alloca i32, align 4
  %typenum.addr = alloca i32, align 4
  %name = alloca ptr, align 8
  store i32 %typenum, ptr %typenum.addr, align 4
  %call = call i32 (...) @compute()
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %cmp2 = icmp slt i32 %call1, -34
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %0 = load i32, ptr %typenum.addr, align 4
  %sub = sub nsw i32 0, %0
  switch i32 %sub, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
    i32 4, label %sw.bb5
    i32 5, label %sw.bb6
    i32 6, label %sw.bb7
    i32 7, label %sw.bb8
    i32 8, label %sw.bb9
    i32 9, label %sw.bb10
    i32 10, label %sw.bb11
    i32 11, label %sw.bb12
    i32 12, label %sw.bb13
    i32 13, label %sw.bb14
    i32 14, label %sw.bb15
    i32 15, label %sw.bb16
    i32 16, label %sw.bb17
    i32 17, label %sw.bb18
    i32 18, label %sw.bb19
    i32 19, label %sw.bb20
    i32 20, label %sw.bb21
    i32 21, label %sw.bb22
    i32 22, label %sw.bb23
    i32 23, label %sw.bb24
    i32 24, label %sw.bb25
    i32 25, label %sw.bb26
    i32 26, label %sw.bb27
    i32 27, label %sw.bb28
    i32 28, label %sw.bb29
    i32 29, label %sw.bb30
    i32 30, label %sw.bb31
    i32 31, label %sw.bb32
    i32 32, label %sw.bb33
    i32 33, label %sw.bb34
    i32 34, label %sw.bb35
  ]

sw.bb:                                            ; preds = %if.end
  store ptr @.str.1, ptr %name, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  store ptr @.str.2, ptr %name, align 8
  br label %sw.bb4

sw.bb4:                                           ; preds = %if.end, %sw.bb3
  store ptr @.str.3, ptr %name, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  store ptr @.str.4, ptr %name, align 8
  br label %sw.bb6

sw.bb6:                                           ; preds = %if.end, %sw.bb5
  store ptr @.str.5, ptr %name, align 8
  br label %sw.bb7

sw.bb7:                                           ; preds = %if.end, %sw.bb6
  store ptr @.str.6, ptr %name, align 8
  br label %sw.bb8

sw.bb8:                                           ; preds = %if.end, %sw.bb7
  store ptr @.str.7, ptr %name, align 8
  br label %sw.bb9

sw.bb9:                                           ; preds = %if.end, %sw.bb8
  store ptr @.str.8, ptr %name, align 8
  br label %sw.bb10

sw.bb10:                                          ; preds = %if.end, %sw.bb9
  store ptr @.str.9, ptr %name, align 8
  br label %sw.bb11

sw.bb11:                                          ; preds = %if.end, %sw.bb10
  store ptr @.str.10, ptr %name, align 8
  br label %sw.bb12

sw.bb12:                                          ; preds = %if.end, %sw.bb11
  store ptr @.str.11, ptr %name, align 8
  br label %sw.bb13

sw.bb13:                                          ; preds = %if.end, %sw.bb12
  store ptr @.str.12, ptr %name, align 8
  br label %sw.bb14

sw.bb14:                                          ; preds = %if.end, %sw.bb13
  store ptr @.str.13, ptr %name, align 8
  br label %sw.bb15

sw.bb15:                                          ; preds = %if.end, %sw.bb14
  store ptr @.str.14, ptr %name, align 8
  br label %sw.bb16

sw.bb16:                                          ; preds = %if.end, %sw.bb15
  store ptr @.str.15, ptr %name, align 8
  br label %sw.bb17

sw.bb17:                                          ; preds = %if.end, %sw.bb16
  store ptr @.str.16, ptr %name, align 8
  br label %sw.bb18

sw.bb18:                                          ; preds = %if.end, %sw.bb17
  store ptr @.str.17, ptr %name, align 8
  br label %sw.bb19

sw.bb19:                                          ; preds = %if.end, %sw.bb18
  store ptr @.str.18, ptr %name, align 8
  br label %sw.bb20

sw.bb20:                                          ; preds = %if.end, %sw.bb19
  store ptr @.str.19, ptr %name, align 8
  br label %sw.bb21

sw.bb21:                                          ; preds = %if.end, %sw.bb20
  store ptr @.str.20, ptr %name, align 8
  br label %sw.bb22

sw.bb22:                                          ; preds = %if.end, %sw.bb21
  store ptr @.str.21, ptr %name, align 8
  br label %sw.bb23

sw.bb23:                                          ; preds = %if.end, %sw.bb22
  store ptr @.str.22, ptr %name, align 8
  br label %sw.bb24

sw.bb24:                                          ; preds = %if.end, %sw.bb23
  store ptr @.str.23, ptr %name, align 8
  br label %sw.bb25

sw.bb25:                                          ; preds = %if.end, %sw.bb24
  store ptr @.str.24, ptr %name, align 8
  br label %sw.bb26

sw.bb26:                                          ; preds = %if.end, %sw.bb25
  store ptr @.str.25, ptr %name, align 8
  br label %sw.bb27

sw.bb27:                                          ; preds = %if.end, %sw.bb26
  store ptr @.str.26, ptr %name, align 8
  br label %sw.bb28

sw.bb28:                                          ; preds = %if.end, %sw.bb27
  store ptr @.str.27, ptr %name, align 8
  br label %sw.bb29

sw.bb29:                                          ; preds = %if.end, %sw.bb28
  store ptr @.str.28, ptr %name, align 8
  br label %sw.bb30

sw.bb30:                                          ; preds = %if.end, %sw.bb29
  store ptr @.str.29, ptr %name, align 8
  br label %sw.bb31

sw.bb31:                                          ; preds = %if.end, %sw.bb30
  store ptr @.str.30, ptr %name, align 8
  br label %sw.bb32

sw.bb32:                                          ; preds = %if.end, %sw.bb31
  store ptr @.str.31, ptr %name, align 8
  br label %sw.bb33

sw.bb33:                                          ; preds = %if.end, %sw.bb32
  store ptr @.str.32, ptr %name, align 8
  br label %sw.bb34

sw.bb34:                                          ; preds = %if.end, %sw.bb33
  store ptr @.str.33, ptr %name, align 8
  br label %sw.bb35

sw.bb35:                                          ; preds = %if.end, %sw.bb34
  store ptr @.str.34, ptr %name, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb35, %if.end, %sw.bb4, %sw.bb
  %1 = load ptr, ptr %name, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

declare i32 @compute(...) #1

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @stab_xcoff_builtin_type(i32 noundef 0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call i32 @stab_xcoff_builtin_type(i32 noundef -1)
  %cmp2 = icmp ne i32 %call1, 105
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @stab_xcoff_builtin_type(i32 noundef -2)
  %cmp6 = icmp ne i32 %call5, 115
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @abort() #3
  unreachable

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @stab_xcoff_builtin_type(i32 noundef -3)
  %cmp10 = icmp ne i32 %call9, 115
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @abort() #3
  unreachable

if.end12:                                         ; preds = %if.end8
  store i32 -4, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end12
  %0 = load i32, ptr %i, align 4
  %cmp13 = icmp sge i32 %0, -34
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %call14 = call i32 @stab_xcoff_builtin_type(i32 noundef %1)
  %cmp15 = icmp ne i32 %call14, 105
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.body
  call void @abort() #3
  unreachable

if.end17:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %2 = load i32, ptr %i, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %call18 = call i32 @stab_xcoff_builtin_type(i32 noundef -35)
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %for.end
  call void @abort() #3
  unreachable

if.end21:                                         ; preds = %for.end
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
