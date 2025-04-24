; 157787792515227826940401313128833778451
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/157787792515227826940401313128833778451.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/157787792515227826940401313128833778451.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acc = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @addhi(i16 noundef signext %a) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i16, align 2
  store i16 %a, ptr %a.addr, align 2
  %0 = load i64, ptr @acc, align 8
  %add = add nsw i64 %0, poison
  store i64 %add, ptr @acc, align 8
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @subhi(i16 noundef signext %a) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i16, align 2
  store i16 %a, ptr %a.addr, align 2
  %0 = load i16, ptr %a.addr, align 2
  %conv = sext i16 %0 to i64
  %shl = shl i64 %conv, 32
  %1 = load i64, ptr @acc, align 8
  %sub = sub nsw i64 %1, %shl
  store i64 %sub, ptr @acc, align 8
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i64 281470681743360, ptr @acc, align 8
  %call = call i32 @addhi(i16 noundef signext 1)
  %0 = load i64, ptr @acc, align 8
  %cmp = icmp ne i64 %0, 281474976710656
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call i32 @subhi(i16 noundef signext 1)
  %1 = load i64, ptr @acc, align 8
  %cmp2 = icmp ne i64 %1, 281470681743360
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end4:                                          ; preds = %if.end
  call void @exit(i32 noundef 0) #4
  unreachable
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
