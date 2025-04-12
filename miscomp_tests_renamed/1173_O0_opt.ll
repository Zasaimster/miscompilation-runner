; 166502409293555282299064284937459662374
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/166502409293555282299064284937459662374_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/166502409293555282299064284937459662374.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @stab_xcoff_builtin_type(i32 noundef %typenum) #0 {
entry:
  %typenum.addr = alloca i32, align 4
  store i32 %typenum, ptr %typenum.addr, align 4
  ret i32 0
}

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
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call i32 @stab_xcoff_builtin_type(i32 noundef -1)
  %cmp2 = icmp ne i32 %call1, 105
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @abort() #2
  unreachable

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @stab_xcoff_builtin_type(i32 noundef -2)
  %cmp6 = icmp ne i32 %call5, 115
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @abort() #2
  unreachable

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @stab_xcoff_builtin_type(i32 noundef -3)
  %cmp10 = icmp ne i32 %call9, 115
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @abort() #2
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
  call void @abort() #2
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
  call void @abort() #2
  unreachable

if.end21:                                         ; preds = %for.end
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
