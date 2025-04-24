; 199629651973423605209755386671489440361
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/199629651973423605209755386671489440361_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/199629651973423605209755386671489440361.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gfbyte() #0 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @gfbyte()
  store i32 %call, ptr %i, align 4
  %0 = load i32, ptr %i, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, ptr %i, align 4
  %1 = load i32, ptr %i, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %k, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %i, align 4
  %add1 = add nsw i32 %2, 0
  store i32 %add1, ptr %k, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, ptr %i, align 4
  %cmp2 = icmp ne i32 %3, 1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end4:                                          ; preds = %if.end
  store i32 1, ptr %k, align 4
  %4 = load i32, ptr %k, align 4
  %5 = load i32, ptr %i, align 4
  %cmp5 = icmp sle i32 %4, %5
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then6
  %call7 = call i32 @gfbyte()
  store i32 %call7, ptr %j, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %6 = load i32, ptr %k, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %k, align 4
  %7 = load i32, ptr %i, align 4
  %cmp8 = icmp slt i32 %6, %7
  br i1 %cmp8, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.end4
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
