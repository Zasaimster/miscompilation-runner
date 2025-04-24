; 192123639878332189534714321959167890013
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/192123639878332189534714321959167890013.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/192123639878332189534714321959167890013.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"Square calculation complete.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(ptr noundef %a) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 %call, ptr %j, align 4
  %0 = load ptr, ptr %a.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = load i32, ptr %j, align 4
  %sub = sub nsw i32 %conv, %2
  store i32 %sub, ptr %i, align 4
  %3 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %x, align 4
  %4 = load i32, ptr %i, align 4
  %sub2 = sub nsw i32 0, %4
  store i32 %sub2, ptr %y, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %x, align 4
  %5 = load i32, ptr %i, align 4
  store i32 %5, ptr %y, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, ptr %x, align 4
  %7 = load i32, ptr %y, align 4
  %add = add nsw i32 %6, %7
  ret i32 %add
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [2 x i8], align 1
  store i32 0, ptr %retval, align 4
  %arrayidx = getelementptr inbounds [2 x i8], ptr %a, i64 0, i64 0
  store i8 8, ptr %arrayidx, align 1
  %arrayidx1 = getelementptr inbounds [2 x i8], ptr %a, i64 0, i64 1
  store i8 9, ptr %arrayidx1, align 1
  %arraydecay = getelementptr inbounds [2 x i8], ptr %a, i64 0, i64 0
  %call = call i32 @f(ptr noundef %arraydecay)
  %cmp = icmp ne i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
