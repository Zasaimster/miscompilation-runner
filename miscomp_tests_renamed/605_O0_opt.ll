; 110849750753357867918302539870727147635
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/110849750753357867918302539870727147635_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/110849750753357867918302539870727147635.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i8 noundef signext %x) #0 {
entry:
  %x.addr = alloca i8, align 1
  %y = alloca i32, align 4
  store i8 %x, ptr %x.addr, align 1
  store i32 0, ptr %y, align 4
  ret i32 0
}

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
  call void @abort() #2
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
  call void @abort() #2
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
  call void @abort() #2
  unreachable

if.end25:                                         ; preds = %lor.lhs.false21
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

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
