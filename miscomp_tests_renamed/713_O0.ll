; 157107257418984924245227787822918440518
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/157107257418984924245227787822918440518.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/157107257418984924245227787822918440518.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i8 noundef signext %x) #0 {
entry:
  %x.addr = alloca i8, align 1
  %y = alloca i32, align 4
  store i8 %x, ptr %x.addr, align 1
  store i32 0, ptr %y, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  switch i32 %call, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb6
    i32 7, label %sw.bb7
    i32 8, label %sw.bb8
    i32 9, label %sw.bb9
    i32 10, label %sw.bb10
    i32 11, label %sw.bb11
    i32 12, label %sw.bb12
    i32 13, label %sw.bb13
    i32 14, label %sw.bb14
    i32 15, label %sw.bb15
    i32 16, label %sw.bb16
    i32 17, label %sw.bb17
    i32 18, label %sw.bb18
    i32 19, label %sw.bb19
    i32 20, label %sw.bb20
    i32 21, label %sw.bb21
    i32 22, label %sw.bb22
    i32 23, label %sw.bb23
    i32 24, label %sw.bb24
    i32 25, label %sw.bb25
    i32 26, label %sw.bb26
    i32 27, label %sw.bb27
    i32 28, label %sw.bb28
    i32 29, label %sw.bb29
    i32 30, label %sw.bb30
    i32 31, label %sw.bb31
    i32 32, label %sw.bb32
    i32 98, label %sw.bb33
    i32 -62, label %sw.bb34
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, ptr %y, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i32 7, ptr %y, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store i32 2, ptr %y, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  store i32 19, ptr %y, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  store i32 5, ptr %y, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  store i32 17, ptr %y, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  store i32 31, ptr %y, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  store i32 8, ptr %y, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  store i32 28, ptr %y, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  store i32 16, ptr %y, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  store i32 31, ptr %y, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  store i32 12, ptr %y, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  store i32 15, ptr %y, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  store i32 111, ptr %y, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  store i32 17, ptr %y, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  store i32 10, ptr %y, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  store i32 31, ptr %y, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  store i32 7, ptr %y, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  store i32 2, ptr %y, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  store i32 19, ptr %y, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  store i32 5, ptr %y, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  store i32 107, ptr %y, align 4
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  store i32 31, ptr %y, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  store i32 8, ptr %y, align 4
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  store i32 28, ptr %y, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  store i32 106, ptr %y, align 4
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  store i32 31, ptr %y, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  store i32 102, ptr %y, align 4
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  store i32 105, ptr %y, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  store i32 111, ptr %y, align 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  store i32 17, ptr %y, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  store i32 10, ptr %y, align 4
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry
  store i32 31, ptr %y, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  store i32 18, ptr %y, align 4
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  store i32 19, ptr %y, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %0 = load i32, ptr %y, align 4
  ret i32 %0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @foo(i8 noundef signext 98)
  %cmp = icmp ne i32 %call, 18
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i32 @foo(i8 noundef signext 97)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = call i32 @foo(i8 noundef signext 99)
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %lor.lhs.false3
  %call6 = call i32 @foo(i8 noundef signext -62)
  %cmp7 = icmp ne i32 %call6, 19
  br i1 %cmp7, label %if.then14, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.end
  %call9 = call i32 @foo(i8 noundef signext -63)
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then14, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %call12 = call i32 @foo(i8 noundef signext -61)
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %lor.lhs.false11, %lor.lhs.false8, %if.end
  call void @abort() #3
  unreachable

if.end15:                                         ; preds = %lor.lhs.false11
  %call16 = call i32 @foo(i8 noundef signext 28)
  %cmp17 = icmp ne i32 %call16, 105
  br i1 %cmp17, label %if.then24, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.end15
  %call19 = call i32 @foo(i8 noundef signext 27)
  %cmp20 = icmp ne i32 %call19, 102
  br i1 %cmp20, label %if.then24, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %call22 = call i32 @foo(i8 noundef signext 29)
  %cmp23 = icmp ne i32 %call22, 111
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %lor.lhs.false21, %lor.lhs.false18, %if.end15
  call void @abort() #3
  unreachable

if.end25:                                         ; preds = %lor.lhs.false21
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
