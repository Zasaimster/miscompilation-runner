; 18029544470081366024251687935091094938
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/18029544470081366024251687935091094938.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/18029544470081366024251687935091094938.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global { i8, i8, [2 x i8] } { i8 4, i8 67, [2 x i8] zeroinitializer }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %bf.load = load i16, ptr @x, align 4
  %bf.shl = shl i16 %bf.load, 12
  %bf.ashr = ashr i16 %bf.shl, 12
  %bf.cast = sext i16 %bf.ashr to i32
  %cmp = icmp ne i32 %bf.cast, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %bf.load1 = load i16, ptr @x, align 4
  %bf.shl2 = shl i16 %bf.load1, 4
  %bf.ashr3 = ashr i16 %bf.shl2, 12
  %bf.cast4 = sext i16 %bf.ashr3 to i32
  %cmp5 = icmp ne i32 %bf.cast4, 3
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end7:                                          ; preds = %if.end
  %bf.load8 = load i16, ptr @x, align 4
  %bf.ashr9 = ashr i16 %bf.load8, 12
  %bf.cast10 = sext i16 %bf.ashr9 to i32
  %cmp11 = icmp ne i32 %bf.cast10, 4
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  call void @abort() #3
  unreachable

if.end13:                                         ; preds = %if.end7
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
